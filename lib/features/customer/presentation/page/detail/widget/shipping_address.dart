import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      width: double.infinity,
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Shipping Address", style: TextTheme.of(context).headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // Contact
          Row(
            children: [
              SizedBox(width: 120, child: Text("Name")),
              Text(":"),
              SizedBox(width: DimenSizes.spaceBtwItems / 2),
              Expanded(
                  child:
                      Text("Ilham", style: TextTheme.of(context).titleMedium))
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems / 2),
          Row(
            children: [
              SizedBox(width: 120, child: Text("Country")),
              Text(":"),
              SizedBox(width: DimenSizes.spaceBtwItems / 2),
              Text("USA", style: TextTheme.of(context).titleSmall),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems / 2),
          Row(
            children: [
              SizedBox(width: 120, child: Text("Phone Number")),
              Text(":"),
              SizedBox(width: DimenSizes.spaceBtwItems / 2),
              Expanded(
                child: Text("+25 345346 546546",
                    style: TextTheme.of(context).titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems / 2),
          Row(
            children: [
              SizedBox(
                  width: 120,
                  child: Text(
                    "Address",
                  )),
              Text(":"),
              SizedBox(width: DimenSizes.spaceBtwItems / 2),
              Expanded(
                child: Text("Jl Buntu No 45, Jakarta",
                    style: TextTheme.of(context).titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems / 2),
        ],
      ),
    );
  }
}
