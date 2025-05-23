import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: CustomColors.darkGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
  static final horizontalProductShadow = BoxShadow(
      color: CustomColors.darkGrey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
