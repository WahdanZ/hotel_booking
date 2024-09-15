// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hello`
  String get hello {
    return Intl.message(
      'hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Hotel Booking`
  String get appTitle {
    return Intl.message(
      'Hotel Booking',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get tab_overview {
    return Intl.message(
      'Overview',
      name: 'tab_overview',
      desc: '',
      args: [],
    );
  }

  /// `Hotels`
  String get tab_hotels {
    return Intl.message(
      'Hotels',
      name: 'tab_hotels',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get tab_favorites {
    return Intl.message(
      'Favorites',
      name: 'tab_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get tab_account {
    return Intl.message(
      'Account',
      name: 'tab_account',
      desc: '',
      args: [],
    );
  }

  /// `Hotels`
  String get hotels_page_title {
    return Intl.message(
      'Hotels',
      name: 'hotels_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite_page_title {
    return Intl.message(
      'Favorite',
      name: 'favorite_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview_page_title {
    return Intl.message(
      'Overview',
      name: 'overview_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account_page_title {
    return Intl.message(
      'Account',
      name: 'account_page_title',
      desc: '',
      args: [],
    );
  }

  /// `{days} Days | {nights} Nights`
  String hotelDaysNights(Object days, Object nights) {
    return Intl.message(
      '$days Days | $nights Nights',
      name: 'hotelDaysNights',
      desc: '',
      args: [days, nights],
    );
  }

  /// `{roomName} | {boardingType}`
  String roomInfo(Object roomName, Object boardingType) {
    return Intl.message(
      '$roomName | $boardingType',
      name: 'roomInfo',
      desc: '',
      args: [roomName, boardingType],
    );
  }

  /// `{adults} Adults, {children} Children | {flightIncluded}`
  String guestsAndFlightInfo(
      Object adults, Object children, Object flightIncluded) {
    return Intl.message(
      '$adults Adults, $children Children | $flightIncluded',
      name: 'guestsAndFlightInfo',
      desc: '',
      args: [adults, children, flightIncluded],
    );
  }

  /// `from`
  String get fromPrice {
    return Intl.message(
      'from',
      name: 'fromPrice',
      desc: '',
      args: [],
    );
  }

  /// `{price} € p.P.`
  String pricePerPerson(Object price) {
    return Intl.message(
      '$price € p.P.',
      name: 'pricePerPerson',
      desc: '',
      args: [price],
    );
  }

  /// `View Offers`
  String get viewOffers {
    return Intl.message(
      'View Offers',
      name: 'viewOffers',
      desc: '',
      args: [],
    );
  }

  /// `incl. Flight`
  String get includedFlight {
    return Intl.message(
      'incl. Flight',
      name: 'includedFlight',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get noFlight {
    return Intl.message(
      '',
      name: 'noFlight',
      desc: '',
      args: [],
    );
  }

  /// `View Hotel`
  String get viewHotel {
    return Intl.message(
      'View Hotel',
      name: 'viewHotel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
