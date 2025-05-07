import 'package:admin_panel_ecommerce/common/widgets/chips/rounded_choice_chips.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/image_uploader.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateBrandForm extends StatelessWidget {
  const CreateBrandForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      width: 500,
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HEADING
          SizedBox(height: DimenSizes.sm),
          Text("Create New Brand",
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // FORM FIELD
          TextFormField(
            validator: (value) =>
                CustomValidator.validateEmptyText("Name", value),
            decoration: InputDecoration(
                labelText: "Brand Name", prefixIcon: Icon(Iconsax.box)),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields),
          Text("Select Categories",
              style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: DimenSizes.spaceBtwInputFields / 2),
          Wrap(
            spacing: DimenSizes.sm,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: CustomDeviceUtils.isMobileScreen(context)
                        ? 0
                        : DimenSizes.xs),
                child: CustomChoiceChip(
                  text: "Shoes",
                  selected: false,
                  onSelected: (val) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: CustomDeviceUtils.isMobileScreen(context)
                        ? 0
                        : DimenSizes.xs),
                child: CustomChoiceChip(
                  text: "Shoes",
                  selected: true,
                  onSelected: (val) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: CustomDeviceUtils.isMobileScreen(context)
                        ? 0
                        : DimenSizes.xs),
                child: CustomChoiceChip(
                  text: "Shoes",
                  selected: false,
                  onSelected: (val) {},
                ),
              ),
            ],
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
            child: ElevatedButton(onPressed: () {}, child: Text("Create")),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields * 2),
        ],
      )),
    );
  }
}
