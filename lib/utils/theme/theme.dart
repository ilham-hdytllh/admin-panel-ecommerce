import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/appbar_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/chip_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/text_field_theme.dart';
import 'package:admin_panel_ecommerce/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    disabledColor: CustomColors.grey,
    brightness: Brightness.light,
    primaryColor: CustomColors.primary,
    textTheme: CustomTextTheme.lightTextTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    scaffoldBackgroundColor: CustomColors.primaryBackground,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    disabledColor: CustomColors.grey,
    brightness: Brightness.dark,
    primaryColor: CustomColors.primary,
    textTheme: CustomTextTheme.darkTextTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    scaffoldBackgroundColor: CustomColors.primary.withValues(alpha: 0.1),
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkInputDecorationTheme,
  );
}
