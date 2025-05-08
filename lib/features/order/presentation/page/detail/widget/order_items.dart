import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Items", style: TextTheme.of(context).headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // Items
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CustomRoundedImage(
                        imageType: ImageType.asset,
                        image: AssetImages.darkAppLogo,
                        backgroundColor: CustomColors.primaryBackground),
                    SizedBox(
                      width: DimenSizes.spaceBtwItems,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shoes",
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                      ],
                    )),
                    SizedBox(
                      width: DimenSizes.xl * 2,
                      child: Text("\$50",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                    SizedBox(
                      width: DimenSizes.xl * 2,
                      child: Text("3",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                    SizedBox(
                      width: DimenSizes.xl * 2,
                      child: Text("\$150",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: DimenSizes.spaceBtwItems,
                );
              },
              itemCount: 1),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // Sub Total
          CustomRoundedContainer(
            padding: EdgeInsets.all(DimenSizes.defaultSpace),
            backgroundColor: CustomColors.primaryBackground,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total",
                        style: Theme.of(context).textTheme.titleLarge),
                    Text("\$150", style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: DimenSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount",
                        style: Theme.of(context).textTheme.titleLarge),
                    Text("\$150", style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: DimenSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping",
                        style: Theme.of(context).textTheme.titleLarge),
                    Text("\$150", style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: DimenSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tax", style: Theme.of(context).textTheme.titleLarge),
                    Text("\$150", style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: DimenSizes.spaceBtwItems),
                Divider(),
                SizedBox(height: DimenSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",
                        style: Theme.of(context).textTheme.titleLarge),
                    Text("\$150", style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
