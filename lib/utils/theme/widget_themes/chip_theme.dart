import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomChipTheme {
  CustomChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    checkmarkColor: CustomColors.white,
    selectedColor: CustomColors.primary,
    disabledColor: CustomColors.grey.withValues(alpha: 0.4),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle:
        const TextStyle(color: CustomColors.black, fontFamily: 'Urbanist'),
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    checkmarkColor: CustomColors.white,
    selectedColor: CustomColors.primary,
    disabledColor: CustomColors.darkerGrey,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: TextStyle(color: CustomColors.white, fontFamily: 'Urbanist'),
  );
}
