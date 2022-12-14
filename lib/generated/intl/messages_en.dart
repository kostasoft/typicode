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

  static String m0(value) => "at least ${value} characters";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "address": MessageLookupByLibrary.simpleMessage("address"),
        "bs": MessageLookupByLibrary.simpleMessage("bs"),
        "catchPhrase": MessageLookupByLibrary.simpleMessage("catchPhrase"),
        "city": MessageLookupByLibrary.simpleMessage("city"),
        "company": MessageLookupByLibrary.simpleMessage("company"),
        "email": MessageLookupByLibrary.simpleMessage("email"),
        "enter_phone_number":
            MessageLookupByLibrary.simpleMessage("Enter phone number"),
        "geo": MessageLookupByLibrary.simpleMessage("geo"),
        "more_x_symbols": m0,
        "name": MessageLookupByLibrary.simpleMessage("name"),
        "phone": MessageLookupByLibrary.simpleMessage("phone"),
        "posts": MessageLookupByLibrary.simpleMessage("Posts"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "saving_data": MessageLookupByLibrary.simpleMessage("Saving data"),
        "street": MessageLookupByLibrary.simpleMessage("street"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "suite": MessageLookupByLibrary.simpleMessage("suite"),
        "username": MessageLookupByLibrary.simpleMessage("username"),
        "website": MessageLookupByLibrary.simpleMessage("website"),
        "wrong_email":
            MessageLookupByLibrary.simpleMessage("Invalid email format"),
        "zipcode": MessageLookupByLibrary.simpleMessage("zipcode")
      };
}
