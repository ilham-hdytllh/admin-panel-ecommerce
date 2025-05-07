import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingForm extends StatelessWidget {
  const SettingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("App Settings",
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: DimenSizes.spaceBtwItems),
          Form(
              child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    validator: (value) =>
                        CustomValidator.validateEmptyText("App Name", value),
                    decoration: InputDecoration(
                        hintText: "App Name",
                        label: Text("App Name"),
                        prefixIcon: Icon(Iconsax.user)),
                  )),
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwItems),
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    validator: (value) => CustomValidator.validateEmail(value),
                    decoration: InputDecoration(
                        hintText: "Tax (%)",
                        label: Text("Tax Rate (%)"),
                        prefixIcon: Icon(Iconsax.tag)),
                  )),
                  SizedBox(width: DimenSizes.spaceBtwItems),
                  Expanded(
                      child: TextFormField(
                    validator: (value) =>
                        CustomValidator.validatePhoneNumber(value),
                    decoration: InputDecoration(
                        hintText: "Shipping Cost ",
                        label: Text("Shipping Cost (\$)"),
                        prefixIcon: Icon(Iconsax.truck_fast)),
                  )),
                  SizedBox(width: DimenSizes.spaceBtwItems),
                  Expanded(
                      child: TextFormField(
                    validator: (value) =>
                        CustomValidator.validatePhoneNumber(value),
                    decoration: InputDecoration(
                        hintText: "Free Shipping After (\$)",
                        label: Text("Shipping Treshold (\$)"),
                        prefixIcon: Icon(Iconsax.truck_fast)),
                  )),
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Update App Setting")),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
