import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/functions.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: DimenSizes.spaceBtwSections),
      child: Column(
        children: [
          // EMAIL
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: getLocale(StringKey.email)),
          ),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // SUBMIT BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.resetPassword),
                child: Text(getLocale(StringKey.submit))),
          )
        ],
      ),
    ));
  }
}
