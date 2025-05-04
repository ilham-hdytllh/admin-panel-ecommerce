import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/responsive_page/page_forget_password_desktop_tablet.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/responsive_page/page_forget_password_mobile.dart';
import 'package:flutter/material.dart';

class AuthenticationPageForgetPassword extends StatelessWidget {
  const AuthenticationPageForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      useLayout: false,
      desktop: PageForgetPasswordDesktopTablet(),
      mobile: PageForgetPasswordMobile(),
    );
  }
}
