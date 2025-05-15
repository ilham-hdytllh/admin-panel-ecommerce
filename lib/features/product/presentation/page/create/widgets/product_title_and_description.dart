import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';

class ProductTitleAndDescription extends StatelessWidget {
  const ProductTitleAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Basic Information Text
          Text("Basic Information", style: TextTheme.of(context).headlineSmall),
          SizedBox(height: DimenSizes.spaceBtwItems),

          // Product Title Input Field
          TextFormField(
            validator: (value) =>
                CustomValidator.validateEmptyText("Product Title", value),
            decoration: InputDecoration(labelText: "Product Title"),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields),

          // Product Description
          SizedBox(
            height: 300,
            child: TextFormField(
              expands: true,
              maxLines: null,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.multiline,
              textAlignVertical: TextAlignVertical.top,
              validator: (value) => CustomValidator.validateEmptyText(
                  "Product Description", value),
              decoration: InputDecoration(
                labelText: "Product Description",
                hintText: "Add your product description here...",
                alignLabelWithHint: true,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
