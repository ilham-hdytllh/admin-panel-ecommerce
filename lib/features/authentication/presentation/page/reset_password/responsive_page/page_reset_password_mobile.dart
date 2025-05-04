import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/widgets/reset_password_body.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/widgets/reset_password_header.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageResetPasswordMobile extends StatelessWidget {
  const PageResetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenSizes.defaultSpace),
        child: Column(
          children: [
            // HEADER
            ResetPasswordHeader(),
            // BODY
            ResetPasswordBody(),
          ],
        ),
      ),
    );
  }
}
