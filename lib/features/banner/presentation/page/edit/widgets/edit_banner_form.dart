import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EditBannerForm extends StatelessWidget {
  const EditBannerForm({super.key});

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
          Text("Update Banner",
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),

          // FORM FIELD
          Column(
            children: [
              GestureDetector(
                  child: CustomRoundedImage(
                      width: 400,
                      height: 200,
                      backgroundColor: CustomColors.primaryBackground,
                      imageType: ImageType.asset,
                      image: AssetImages.defaultImage)),
              SizedBox(height: DimenSizes.spaceBtwItems),
              TextButton(onPressed: () {}, child: Text("Select Image")),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields),

          Text("Make your Banner Active or InActive",
              style: Theme.of(context).textTheme.bodyMedium),
          CheckboxMenuButton(
              value: false, onChanged: (v) {}, child: Text("Active")),
          SizedBox(height: DimenSizes.spaceBtwInputFields),

          SizedBox(
            child: DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  value: "home",
                  child: Text("Home"),
                ),
                DropdownMenuItem<String>(
                  value: "search",
                  child: Text("Search"),
                )
              ],
              onChanged: (va) {},
              value: "search",
            ),
          ),
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
