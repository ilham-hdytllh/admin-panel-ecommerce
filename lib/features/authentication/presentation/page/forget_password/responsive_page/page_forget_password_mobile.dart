import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/widgets/forget_password_form.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/widgets/forget_password_header.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageForgetPasswordMobile extends StatelessWidget {
  const PageForgetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenSizes.defaultSpace),
        child: Column(
          children: [
            // HEADER
            ForgetPasswordHeader(),
            // FORM
            ForgetPasswordForm(),
          ],
        ),
      ),
    );
  }
}
