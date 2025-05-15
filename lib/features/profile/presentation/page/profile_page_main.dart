import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/profile/presentation/page/responsive_screen/page_profile_desktop.dart';
import 'package:admin_panel_ecommerce/features/profile/presentation/page/responsive_screen/page_profile_mobile.dart';
import 'package:flutter/material.dart';

class ProfilePageMain extends StatelessWidget {
  const ProfilePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageProfileDesktop(),
      tablet: PageProfileDesktop(),
      mobile: PageProfileMobile(),
    );
  }
}
