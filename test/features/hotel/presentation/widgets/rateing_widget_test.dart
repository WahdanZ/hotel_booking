import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/rating_widget.dart';

void main() {
  group('RatingWidget Tests', () {
    testWidgets('displays the correct number of filled and outlined stars',
        (WidgetTester tester) async {
      const rating = 3;
      const maxRate = 5;

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RatingWidget(
              rate: rating,
              maxRate: maxRate,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.star), findsNWidgets(3)); // 3 filled stars
      expect(
          find.byIcon(Icons.star_border), findsNWidgets(2)); // 2 outlined stars
    });

    testWidgets('displays the correct number of stars when rate equals maxRate',
        (WidgetTester tester) async {
      const rating = 5;
      const maxRate = 5;

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RatingWidget(
              rate: rating,
              maxRate: maxRate,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.star), findsNWidgets(5)); // 5 filled stars
      expect(find.byIcon(Icons.star_border), findsNothing); // No outlined stars
    });

    testWidgets('displays the correct number of stars when rate is 0',
        (WidgetTester tester) async {
      const rating = 0;
      const maxRate = 5;

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RatingWidget(
              rate: rating,
              maxRate: maxRate,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.star), findsNothing); // No filled stars
      expect(
          find.byIcon(Icons.star_border), findsNWidgets(5)); // 5 outlined stars
    });

    testWidgets('uses the custom color and size for stars',
        (WidgetTester tester) async {
      const rating = 3;
      const customColor = Colors.red;
      const customSize = 24.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RatingWidget(
              rate: rating,
              maxRate: 5,
              color: customColor,
              size: customSize,
            ),
          ),
        ),
      );

      final filledStars = tester.widgetList<Icon>(find.byIcon(Icons.star));
      final outlinedStars =
          tester.widgetList<Icon>(find.byIcon(Icons.star_border));

      for (final icon in filledStars) {
        expect(icon.color, customColor);
        expect(icon.size, customSize);
      }

      for (final icon in outlinedStars) {
        expect(icon.color, customColor);
        expect(icon.size, customSize);
      }
    });
  });
}
