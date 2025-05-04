import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/widgets/login_form.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/widgets/login_header.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageLoginMobile extends StatelessWidget {
  const PageLoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(DimenSizes.defaultSpace),
        child: Column(
          children: [
            // HEADER
            LoginHeader(),
            // FORM
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
