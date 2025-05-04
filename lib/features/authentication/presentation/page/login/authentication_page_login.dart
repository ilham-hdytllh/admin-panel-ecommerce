import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/responsive_page/page_login_desktop_tablet.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/responsive_page/page_login_mobile.dart';
import 'package:flutter/material.dart';

class AuthenticationPageLogin extends StatelessWidget {
  const AuthenticationPageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      useLayout: false,
      desktop: PageLoginDesktopTablet(),
      mobile: PageLoginMobile(),
    );
  }
}
