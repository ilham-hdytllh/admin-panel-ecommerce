import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OrderTransaction extends StatelessWidget {
  const OrderTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Transaction", style: TextTheme.of(context).headlineMedium),
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
                        width: 40,
                        height: 40,
                        imageType: ImageType.asset,
                        image: AssetImages.paypal,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Paypal",
                                style: TextTheme.of(context).titleLarge),
                            Text("Paypal fee \$25",
                                style: TextTheme.of(context).labelMedium),
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Date", style: TextTheme.of(context).labelMedium),
                  Text("24 April 2025",
                      style: TextTheme.of(context).titleLarge),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total", style: TextTheme.of(context).labelMedium),
                  Text("\$250", style: TextTheme.of(context).titleLarge),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
