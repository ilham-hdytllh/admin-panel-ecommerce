import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/functions.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // IMAGE
        Image(
            image: AssetImage(AssetImages.deliveredEmailIllustration),
            width: 300,
            height: 300),
        SizedBox(height: DimenSizes.spaceBtwItems),

        // TITLE & SUBTITLE
        Text(getLocale(StringKey.changeYourPasswordTitle),
            style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: DimenSizes.spaceBtwItems),
        Text(email ?? "", style: Theme.of(context).textTheme.labelLarge),
        SizedBox(height: DimenSizes.spaceBtwItems),
        Text(getLocale(StringKey.changeYourPasswordSubTitle),
            style: Theme.of(context).textTheme.labelMedium),
        SizedBox(height: DimenSizes.spaceBtwSections),

        // DONE BUTTON
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.offAllNamed(AppRoutes.login),
              child: Text(getLocale(StringKey.done))),
        ),
        SizedBox(height: DimenSizes.spaceBtwItems),

        // RESEND BUTTON
        SizedBox(
          width: double.infinity,
          child: TextButton(
              onPressed: () {}, child: Text(getLocale(StringKey.resendEmail))),
        )
      ],
    );
  }
}
