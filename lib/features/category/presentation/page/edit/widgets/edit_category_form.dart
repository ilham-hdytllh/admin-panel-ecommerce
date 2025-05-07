import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/image_uploader.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditCategoryForm extends StatelessWidget {
  const EditCategoryForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      width: !CustomDeviceUtils.isMobileScreen(context) ? 500 : double.infinity,
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HEADING
          SizedBox(height: DimenSizes.sm),
          Text("Update Category",
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // FORM FIELD
          TextFormField(
            validator: (value) =>
                CustomValidator.validateEmptyText("Name", value),
            decoration: InputDecoration(
                labelText: "Category Name", prefixIcon: Icon(Iconsax.category)),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields),

          DropdownButtonFormField(
              decoration: InputDecoration(
                  labelText: "Parent Category",
                  prefixIcon: Icon(Iconsax.bezier)),
              items: [
                DropdownMenuItem(
                    value: "",
                    child: Row(
                      children: [Text("item.name")],
                    ))
              ],
              onChanged: (va) {}),
          SizedBox(height: DimenSizes.spaceBtwInputFields * 2),

          CustomImageUploader(
              width: 80,
              height: 80,
              imageType: ImageType.asset,
              image: AssetImages.defaultImage),
          SizedBox(height: DimenSizes.spaceBtwInputFields),

          CheckboxMenuButton(
              value: true, onChanged: (va) {}, child: Text("Featured")),
          SizedBox(height: DimenSizes.spaceBtwInputFields * 2),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Update")),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields * 2),
        ],
      )),
    );
  }
}
