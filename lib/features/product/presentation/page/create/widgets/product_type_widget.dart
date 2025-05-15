import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductTypeWidget extends StatelessWidget {
  const ProductTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Product Type", style: TextTheme.of(context).bodyMedium),
        SizedBox(height: DimenSizes.spaceBtwItems),
        RadioMenuButton(
            value: ProductType.single,
            groupValue: ProductType.single,
            onChanged: (va) {},
            child: Text("Single")),
        RadioMenuButton(
            value: ProductType.variable,
            groupValue: ProductType.single,
            onChanged: (va) {},
            child: Text("Variable"))
      ],
    );
  }
}
