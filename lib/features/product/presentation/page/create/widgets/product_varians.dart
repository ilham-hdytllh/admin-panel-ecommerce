import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductVariations extends StatelessWidget {
  const ProductVariations({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      child: Column(
        children: [
          // Header
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Product Varians", style: TextTheme.of(context).headlineSmall),
            TextButton(onPressed: () {}, child: Text("Remove Variations"))
          ]),
          SizedBox(height: DimenSizes.spaceBtwItems),

          ListView.separated(
              itemBuilder: (context, index) => _buildVariationnTile(),
              separatorBuilder: (_, __) => SizedBox(
                    height: DimenSizes.spaceBtwItems,
                  ),
              itemCount: 2),

          // No Variantions Message
          _buildNoVariationsMessage(),
        ],
      ),
    );
  }
}

_buildNoVariationsMessage() {}

Widget _buildVariationnTile() {}
