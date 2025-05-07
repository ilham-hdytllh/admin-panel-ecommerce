import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/setting/presentation/page/responsive_screen/page_profile_desktop.dart';
import 'package:admin_panel_ecommerce/features/setting/presentation/page/responsive_screen/page_profile_mobile.dart';
import 'package:admin_panel_ecommerce/features/setting/presentation/page/responsive_screen/page_profile_tablet.dart';
import 'package:flutter/material.dart';

class SettingPageMain extends StatelessWidget {
  const SettingPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageSettingDesktop(),
      tablet: PageSettingTablet(),
      mobile: PageSettingMobile(),
    );
  }
}
