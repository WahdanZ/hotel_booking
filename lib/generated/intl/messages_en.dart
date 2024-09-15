// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(adults, children, flightIncluded) =>
      "${adults} Adults, ${children} Children | ${flightIncluded}";

  static String m1(days, nights) => "${days} Days | ${nights} Nights";

  static String m2(price) => "${price} € p.P.";

  static String m3(roomName, boardingType) => "${roomName} | ${boardingType}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_page_title": MessageLookupByLibrary.simpleMessage("Account"),
        "appTitle": MessageLookupByLibrary.simpleMessage("Hotel Booking"),
        "favorite_page_title": MessageLookupByLibrary.simpleMessage("Favorite"),
        "fromPrice": MessageLookupByLibrary.simpleMessage("from"),
        "guestsAndFlightInfo": m0,
        "hello": MessageLookupByLibrary.simpleMessage("hello"),
        "hotelDaysNights": m1,
        "hotels_page_title": MessageLookupByLibrary.simpleMessage("Hotels"),
        "includedFlight": MessageLookupByLibrary.simpleMessage("incl. Flight"),
        "noFlight": MessageLookupByLibrary.simpleMessage(""),
        "overview_page_title": MessageLookupByLibrary.simpleMessage("Overview"),
        "pricePerPerson": m2,
        "roomInfo": m3,
        "tab_account": MessageLookupByLibrary.simpleMessage("Account"),
        "tab_favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "tab_hotels": MessageLookupByLibrary.simpleMessage("Hotels"),
        "tab_overview": MessageLookupByLibrary.simpleMessage("Overview"),
        "viewHotel": MessageLookupByLibrary.simpleMessage("View Hotel"),
        "viewOffers": MessageLookupByLibrary.simpleMessage("View Offers")
      };
}
