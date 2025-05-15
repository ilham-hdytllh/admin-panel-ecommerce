import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: CustomColors.primaryBackground),
        SizedBox(width: DimenSizes.spaceBtwSections),
        Text("Add Product Attributes",
            style: TextTheme.of(context).headlineSmall),
        SizedBox(width: DimenSizes.spaceBtwItems),
        Form(
          child: CustomDeviceUtils.isDesktopScreen(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _buildAttributeName()),
                    SizedBox(width: DimenSizes.spaceBtwItems),
                    Expanded(flex: 2, child: _buildAttributeTextField()),
                    SizedBox(width: DimenSizes.spaceBtwItems),
                    _buildAddAttributeButton(),
                  ],
                )
              : Column(
                  children: [
                    _buildAttributeName(),
                    SizedBox(height: DimenSizes.spaceBtwItems),
                    _buildAttributeTextField(),
                    SizedBox(height: DimenSizes.spaceBtwItems),
                    _buildAddAttributeButton(),
                  ],
                ),
        ),
        SizedBox(height: DimenSizes.spaceBtwSections),

        // List of added attributes
        Text("All Attribute", style: TextTheme.of(context).headlineSmall),
        SizedBox(height: DimenSizes.spaceBtwItems),

        // Display added attributes
        CustomRoundedContainer(
          backgroundColor: CustomColors.primaryBackground,
          child: Column(
            children: [
              buildAttributesList(context),
              buildEmptyAttributes(),
            ],
          ),
        ),
        SizedBox(height: DimenSizes.spaceBtwSections),

        // Genereate Varians
        Center(
          child: SizedBox(
            width: 200,
            child: ElevatedButton.icon(
                icon: Icon(Iconsax.activity),
                onPressed: () {},
                label: Text("Generate Variations")),
          ),
        )
      ],
    );
  }

  ListView buildAttributesList(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: CustomColors.white,
                  borderRadius:
                      BorderRadius.circular(DimenSizes.borderRadiusLg)),
              child: ListTile(
                title: Text("Colors"),
                subtitle: Text("Green, Orange, Pink"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.trash,
                      color: CustomColors.error,
                    )),
              ),
            ),
        separatorBuilder: (_, __) => SizedBox(height: DimenSizes.spaceBtwItems),
        itemCount: 3);
  }

  Column buildEmptyAttributes() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundedImage(
              width: 150,
              height: 80,
              imageType: ImageType.asset,
              image: AssetImages.defaultAttributeColorsImageIcon,
            ),
          ],
        ),
        SizedBox(height: DimenSizes.spaceBtwItems),
        Text("There are no attributes added for this product"),
      ],
    );
  }
}

SizedBox _buildAddAttributeButton() {
  return SizedBox(
    width: 100,
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Iconsax.add),
      style: ElevatedButton.styleFrom(
          foregroundColor: CustomColors.black,
          backgroundColor: CustomColors.secondary,
          side: BorderSide(color: CustomColors.secondary)),
      label: Text("Add"),
    ),
  );
}

TextFormField _buildAttributeTextField() {
  return TextFormField(
    decoration: InputDecoration(
        labelText: "Attribute Name", hintText: "Colors, Sizes, Material"),
    validator: (value) =>
        CustomValidator.validateEmptyText("Attribute Name", value),
  );
}

SizedBox _buildAttributeName() {
  return SizedBox(
    height: 80,
    child: TextFormField(
      expands: true,
      maxLines: null,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.multiline,
      textAlignVertical: TextAlignVertical.top,
      validator: (value) =>
          CustomValidator.validateEmptyText("Attributes Field", value),
      decoration: InputDecoration(
        labelText: "Attributes",
        hintText:
            "Add Attributes separated by | Example : Green | Blue | Yellow ",
        alignLabelWithHint: true,
      ),
    ),
  );
}
