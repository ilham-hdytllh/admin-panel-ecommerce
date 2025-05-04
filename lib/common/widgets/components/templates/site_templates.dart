import 'package:admin_panel_ecommerce/common/widgets/responsive/layout/desktop_layout.dart';
import 'package:admin_panel_ecommerce/common/widgets/responsive/layout/mobile_layout.dart';
import 'package:admin_panel_ecommerce/common/widgets/responsive/layout/tablet_layout.dart';
import 'package:admin_panel_ecommerce/common/widgets/responsive/responsive_template.dart';
import 'package:flutter/material.dart';

class SiteTemplates extends StatelessWidget {
  const SiteTemplates(
      {super.key,
      this.desktop,
      this.tablet,
      this.mobile,
      this.useLayout = true});

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveTemplate(
        desktop: useLayout
            ? DesktopLayout(
                body: desktop,
              )
            : desktop ?? SizedBox(),
        tablet: useLayout
            ? TabletLayout(
                body: tablet ?? desktop,
              )
            : tablet ?? desktop ?? SizedBox(),
        mobile: useLayout
            ? MobileLayout(
                body: mobile ?? desktop,
              )
            : mobile ?? desktop ?? SizedBox(),
      ),
    );
  }
}
