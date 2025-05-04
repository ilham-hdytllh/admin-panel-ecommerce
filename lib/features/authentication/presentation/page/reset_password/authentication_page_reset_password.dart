import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/responsive_page/page_reset_password_desktop_tablet.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/responsive_page/page_reset_password_mobile.dart';
import 'package:flutter/material.dart';

class AuthenticationPageResetPassword extends StatelessWidget {
  const AuthenticationPageResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      useLayout: false,
      desktop: PageResetPasswordDesktopTablet(),
      mobile: PageResetPasswordMobile(),
    );
  }
}
