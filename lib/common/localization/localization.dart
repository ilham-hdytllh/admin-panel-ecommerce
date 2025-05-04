import 'dart:io';

import 'package:admin_panel_ecommerce/common/localization/string_en.dart';
import 'package:admin_panel_ecommerce/common/localization/string_id.dart';
import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/features/setting/domain/entity/setting_entity_language_data.dart';
import 'package:admin_panel_ecommerce/utils/functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': stringEn,
        'id_ID': stringId,
      };

  static Locale get defaultLocale => const Locale('id', 'ID');

  static List<SettingEntityLanguageData> get languageData => [
        SettingEntityLanguageData(
            const Locale('id', 'ID'),
            getLocale(StringKey.labelIndonesia),
            'assets/svg_images/illustrations/id.svg'),
        SettingEntityLanguageData(
            const Locale('en', 'US'),
            getLocale(StringKey.labelEnglish),
            'assets/svg_images/illustrations/en.svg'),
      ];

  static List<Locale> get supportedLocale =>
      languageData.map((e) => e.locale).toList();

  static Locale get deviceLang =>
      languageData
          .firstWhereOrNull((element) =>
              element.locale.languageCode ==
              (!kIsWeb ? Platform.localeName.split("_").first : ""))
          ?.locale ??
      defaultLocale;
}
