import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRoundedContainer(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Customer", style: TextTheme.of(context).headlineMedium),
              SizedBox(height: DimenSizes.spaceBtwSections),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: CustomDeviceUtils.isMobileScreen(context) ? 2 : 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomRoundedImage(
                            imageType: ImageType.asset,
                            image: AssetImages.user,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Ilham",
                                    style: TextTheme.of(context).titleLarge),
                                Text("Ilham@gmail.com",
                                    style: TextTheme.of(context).labelMedium),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: DimenSizes.spaceBtwSections),
        CustomRoundedContainer(
          width: double.infinity,
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Contact Person",
                  style: TextTheme.of(context).headlineMedium),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // Contact
              Text("Ilham", style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
              Text("ilham@gmail.com", style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
              Text("(+62) ************",
                  style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
            ],
          ),
        ),
        SizedBox(height: DimenSizes.spaceBtwSections),
        CustomRoundedContainer(
          width: double.infinity,
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Shipping Address",
                  style: TextTheme.of(context).headlineMedium),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // Contact
              Text("Ilham", style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
              Text("Jl Buntu No 45, Jakarta",
                  style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
            ],
          ),
        ),
        SizedBox(height: DimenSizes.spaceBtwSections),
        CustomRoundedContainer(
          width: double.infinity,
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Billing Address",
                  style: TextTheme.of(context).headlineMedium),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // Contact
              Text("Ilham", style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
              Text("Jl Buntu No 45, Jakarta",
                  style: TextTheme.of(context).titleSmall),
              SizedBox(height: DimenSizes.spaceBtwItems / 2),
            ],
          ),
        ),
      ],
    );
  }
}
