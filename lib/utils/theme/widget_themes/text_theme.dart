import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

/// Custom Class for Light & Dark Text Themes
class CustomTextTheme {
  CustomTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: CustomColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: CustomColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: CustomColors.textPrimary),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: CustomColors.textPrimary),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: CustomColors.textSecondary),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: CustomColors.textSecondary),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        color: CustomColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.textPrimary),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.textSecondary),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.textPrimary),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.textSecondary),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: CustomColors.light),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: CustomColors.light),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: CustomColors.light),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: CustomColors.light),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: CustomColors.light),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: CustomColors.light),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: CustomColors.light),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.light),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: CustomColors.light.withValues(alpha: 0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.light),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: CustomColors.light.withValues(alpha: 0.5)),
  );
}
