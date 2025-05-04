import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/functions.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
          SizedBox(height: DimenSizes.spaceBtwInputFields),
          // PASSWORD
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Iconsax.eye_slash)),
                labelText: getLocale(StringKey.password)),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields / 2),
          // REMEMBER ME
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (val) {}),
                  Text(getLocale(StringKey.rememberMe))
                ],
              ),
              TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.forgetPassword),
                  child: Text(getLocale(StringKey.forgetPassword)))
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwSections),
          // SIGN IN BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(getLocale(StringKey.signIn))),
          )
        ],
      ),
    ));
  }
}
