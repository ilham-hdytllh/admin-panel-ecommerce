import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/controller/login/authentication_controller_login.dart';
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
    final loginController = Get.find<AuthenticationControllerLogin>();
    return Form(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: DimenSizes.spaceBtwSections),
      child: Column(
        children: [
          // EMAIL
          TextFormField(
            controller: loginController.emailController,
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: getLocale(StringKey.email)),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields),
          // PASSWORD
          Obx(
            () => TextFormField(
              controller: loginController.passwordController,
              obscureText: loginController.showPassword.value,
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => loginController.showPassword.value =
                          !loginController.showPassword.value,
                      icon: loginController.showPassword.value
                          ? Icon(Iconsax.eye_slash)
                          : Icon(Iconsax.eye)),
                  labelText: getLocale(StringKey.password)),
            ),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields / 2),
          // REMEMBER ME
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                onPressed: loginController.signIn,
                child: Text(getLocale(StringKey.signIn))),
          )
        ],
      ),
    ));
  }
}
