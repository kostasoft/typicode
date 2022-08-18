// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(value) => "не менее ${value} символов";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "address": MessageLookupByLibrary.simpleMessage("адрес"),
        "bs": MessageLookupByLibrary.simpleMessage("бс"),
        "catchPhrase": MessageLookupByLibrary.simpleMessage("фраза"),
        "city": MessageLookupByLibrary.simpleMessage("город"),
        "company": MessageLookupByLibrary.simpleMessage("компания"),
        "email": MessageLookupByLibrary.simpleMessage("емайл"),
        "enter_phone_number":
            MessageLookupByLibrary.simpleMessage("Укажите номер телефона"),
        "geo": MessageLookupByLibrary.simpleMessage("геопозиция"),
        "more_x_symbols": m0,
        "name": MessageLookupByLibrary.simpleMessage("имя"),
        "phone": MessageLookupByLibrary.simpleMessage("телефон"),
        "posts": MessageLookupByLibrary.simpleMessage("Посты"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "saving_data": MessageLookupByLibrary.simpleMessage("Сохраняем данные"),
        "street": MessageLookupByLibrary.simpleMessage("улица"),
        "submit": MessageLookupByLibrary.simpleMessage("Отправить"),
        "suite": MessageLookupByLibrary.simpleMessage("комплект"),
        "username": MessageLookupByLibrary.simpleMessage("ник"),
        "website": MessageLookupByLibrary.simpleMessage("вебсайт"),
        "wrong_email":
            MessageLookupByLibrary.simpleMessage("Неверный формат эл. почты"),
        "zipcode": MessageLookupByLibrary.simpleMessage("почтовый индекс")
      };
}
