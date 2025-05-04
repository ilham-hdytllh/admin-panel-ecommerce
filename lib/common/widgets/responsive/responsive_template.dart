import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ResponsiveTemplate extends StatelessWidget {
  const ResponsiveTemplate(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= DimenSizes.desktopScreenSize) {
        return desktop;
      } else if (constraints.maxWidth < DimenSizes.desktopScreenSize &&
          constraints.maxWidth >= DimenSizes.tabletScreenSize) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
