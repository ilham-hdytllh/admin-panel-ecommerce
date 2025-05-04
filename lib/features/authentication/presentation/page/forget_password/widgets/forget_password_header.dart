import 'package:admin_panel_ecommerce/common/localization/string_key.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left)),
          SizedBox(height: DimenSizes.spaceBtwItems),
          Text(getLocale(StringKey.forgetPasswordTitle),
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwItems),
          Text(getLocale(StringKey.loginSubTitle),
              style: Theme.of(context).textTheme.labelMedium),
          SizedBox(height: DimenSizes.spaceBtwSections * 2),
        ],
      ),
    );
  }
}
