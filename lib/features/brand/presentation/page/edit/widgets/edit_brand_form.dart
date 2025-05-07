import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/image_uploader.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditBrandForm extends StatelessWidget {
  const EditBrandForm({super.key});

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
          Text("Update Brand",
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // FORM FIELD
          TextFormField(
            validator: (value) =>
                CustomValidator.validateEmptyText("Name", value),
            decoration: InputDecoration(
                labelText: "Brand Name", prefixIcon: Icon(Iconsax.box)),
          ),
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
