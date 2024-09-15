import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/hotel_card_item.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/rating_widget.dart';
import 'package:hotel_booking/generated/l10n.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes.dart';

class MockFavoriteCallback extends Mock {
  void call(String hotelId);
}

class MockViewOffersCallback extends Mock {
  void call(String hotelId);
}

class _TestWidget extends StatefulWidget {
  @override
  __TestWidgetState createState() => __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  bool showDetails = true;

  void toggleDetails() {
    setState(() {
      showDetails = !showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HotelCardItem(
          hotel: createHotelEntity(),
          onFavoriteClick: (_) {},
          onViewOffersClick: (_) {},
          showDetails: showDetails,
        ),
        ElevatedButton(
          onPressed: toggleDetails,
          child: const Text('Toggle Details'),
        ),
      ],
    );
  }
}

void main() {
  group('HotelCardItem Widget Tests', () {
    late MockFavoriteCallback mockFavoriteCallback;
    late MockViewOffersCallback mockViewOffersCallback;

    setUp(() {
      mockFavoriteCallback = MockFavoriteCallback();
      mockViewOffersCallback = MockViewOffersCallback();
    });

    testWidgets('renders all details when showDetails is true',
        (WidgetTester tester) async {
      final hotel = createHotelEntity();

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [S.delegate],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            body: HotelCardItem(
              hotel: hotel,
              onFavoriteClick: mockFavoriteCallback.call,
              onViewOffersClick: mockViewOffersCallback.call,
              showDetails: true,
            ),
          ),
        ),
      );

      expect(find.text('Test Hotel'), findsOneWidget);
      expect(find.byType(RatingWidget), findsOneWidget);
      expect(find.text('Test Destination'), findsOneWidget);
      expect(find.text('3 Days | 2 Nights'), findsOneWidget);
      expect(find.text('Deluxe Room | Full Board'), findsOneWidget);
      expect(find.text('2 Adults, 1 Children | incl. Flight'), findsOneWidget);
      expect(find.text('€ 300.00'), findsOneWidget);
      expect(find.text('150.00 € p.P.'), findsOneWidget);
      expect(find.text('View Offers'), findsOneWidget);
    });

    testWidgets('hide details when showDetails is false',
        (WidgetTester tester) async {
      final hotel = createHotelEntity();

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [S.delegate],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            body: HotelCardItem(
              hotel: hotel,
              onFavoriteClick: mockFavoriteCallback.call,
              onViewOffersClick: mockViewOffersCallback.call,
              showDetails: false,
            ),
          ),
        ),
      );

      expect(find.text('Test Hotel'), findsOneWidget);
      expect(find.byType(RatingWidget), findsOneWidget);
      expect(find.text('3 Days | 2 Nights'), findsNothing);
      expect(find.text('Deluxe Room | Full Board'), findsNothing);
      expect(find.text('2 Adults, 1 Children | incl. Flight'), findsNothing);
      expect(find.text('€ 300.00'), findsNothing);
      expect(find.text('150.00 € p.P.'), findsNothing);
      expect(find.text('View Offers'), findsOneWidget);
    });

    testWidgets('calls onFavoriteClick when favorite icon is tapped',
        (WidgetTester tester) async {
      final hotel = createHotelEntity(isFavorite: false);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [S.delegate],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            body: HotelCardItem(
              hotel: hotel,
              onFavoriteClick: mockFavoriteCallback.call,
              onViewOffersClick: mockViewOffersCallback.call,
              showDetails: true,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.favorite_border), findsOneWidget);
      await tester.tap(find.byIcon(Icons.favorite_border));

      verify(() => mockFavoriteCallback.call('1')).called(1);
    });

    testWidgets('calls onViewOffersClick when "View Offers" button is tapped',
        (WidgetTester tester) async {
      final hotel = createHotelEntity();

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [S.delegate],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            body: HotelCardItem(
              hotel: hotel,
              onFavoriteClick: mockFavoriteCallback.call,
              onViewOffersClick: mockViewOffersCallback.call,
              showDetails: true,
            ),
          ),
        ),
      );

      await tester.tap(find.text('View Offers'));

      verify(() => mockViewOffersCallback.call('1')).called(1);
    });

    testWidgets('toggles favorite icon based on isFavorite',
        (WidgetTester tester) async {
      final favoriteHotel = createHotelEntity(isFavorite: true);

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [S.delegate],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            body: HotelCardItem(
              hotel: favoriteHotel,
              onFavoriteClick: mockFavoriteCallback.call,
              onViewOffersClick: mockViewOffersCallback.call,
              showDetails: true,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.favorite), findsOneWidget);
      expect(find.byIcon(Icons.favorite_border), findsNothing);
    });
  });
}
