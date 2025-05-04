import 'package:admin_panel_ecommerce/common/styles/spacing_styles.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/widgets/reset_password_body.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/widgets/reset_password_header.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageResetPasswordDesktopTablet extends StatelessWidget {
  const PageResetPasswordDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Container(
            padding: CustomSpacingStyle.paddingWithAppBarHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DimenSizes.cardRadiusLg),
              color: CustomColors.white,
            ),
            child: Column(
              children: [
                // HEADER
                ResetPasswordHeader(),
                // BODY
                ResetPasswordBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
