import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    iconTheme:
        IconThemeData(color: CustomColors.iconPrimary, size: DimenSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: CustomColors.iconPrimary, size: DimenSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: CustomColors.black,
        fontFamily: 'Urbanist'),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: CustomColors.dark,
    surfaceTintColor: CustomColors.dark,
    iconTheme:
        IconThemeData(color: CustomColors.black, size: DimenSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: CustomColors.white, size: DimenSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: CustomColors.white,
        fontFamily: 'Urbanist'),
  );
}
