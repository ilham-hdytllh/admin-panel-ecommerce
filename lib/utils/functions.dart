import 'package:get/get.dart';

String getLocale(String key, {Map<String, String>? parameter, int length = 0}) {
  String keyVal = key;
  if (length > 0) {
    if (parameter != null) {
      keyVal = key.trPluralParams("${key}Plural", length, parameter);
    } else {
      keyVal = key.trPlural("${key}Plural", length);
    }
  } else {
    if (parameter != null) {
      keyVal = key.trParams(parameter);
    } else {
      keyVal = key.tr;
    }
  }
  return keyVal;
}
