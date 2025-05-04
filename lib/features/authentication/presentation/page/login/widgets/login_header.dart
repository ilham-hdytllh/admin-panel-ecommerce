import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Image(
              width: 100,
              height: 100,
              image: AssetImage(AssetImages.darkAppLogo)),
          SizedBox(height: DimenSizes.spaceBtwSections),
          Text(getLocale(StringKey.loginTitle),
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: DimenSizes.sm),
          Text(getLocale(StringKey.loginSubTitle),
              style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
