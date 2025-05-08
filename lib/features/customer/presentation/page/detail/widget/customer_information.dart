import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomerInformation extends StatelessWidget {
  const CustomerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Customer Information",
              style: TextTheme.of(context).headlineMedium),
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
                        padding: 0,
                        imageType: ImageType.asset,
                        image: AssetImages.user,
                      ),
                      SizedBox(width: DimenSizes.spaceBtwItems),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Ilham",
                                style: TextTheme.of(context).titleLarge,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis),
                            Text("Ilham@gmail.com",
                                maxLines: 1, overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwSections),
          Column(
            children: [
              // META DATA
              Row(
                children: [
                  SizedBox(width: 120, child: Text("Username")),
                  Text(":"),
                  SizedBox(width: DimenSizes.spaceBtwItems / 2),
                  Expanded(
                      child: Text("Ilham",
                          style: TextTheme.of(context).titleMedium))
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwItems),
              Row(
                children: [
                  SizedBox(width: 120, child: Text("Country")),
                  Text(":"),
                  SizedBox(width: DimenSizes.spaceBtwItems / 2),
                  Expanded(
                      child: Text("Indonesia",
                          style: TextTheme.of(context).titleMedium))
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwItems),
              Row(
                children: [
                  SizedBox(width: 120, child: Text("Phone Number")),
                  Text(":"),
                  SizedBox(width: DimenSizes.spaceBtwItems / 2),
                  Expanded(
                      child: Text("+62 2353 5345 3454",
                          style: TextTheme.of(context).titleMedium))
                ],
              ),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems),
          Divider(),
          SizedBox(height: DimenSizes.spaceBtwItems),

          // Additional Info
          Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Last Order",
                      style: Theme.of(context).textTheme.titleLarge),
                  Text("7 Days Ago, #[4aadc]")
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Average Order Value",
                      style: Theme.of(context).textTheme.titleLarge),
                  Text("\$352")
                ],
              ))
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems),
          Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Registered",
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(DateTime.now().toString())
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email Marketing",
                      style: Theme.of(context).textTheme.titleLarge),
                  Text("Subscribed")
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
