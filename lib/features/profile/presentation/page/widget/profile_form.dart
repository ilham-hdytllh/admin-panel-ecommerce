import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Profile Details",
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
                        CustomValidator.validateEmptyText("First Name", value),
                    decoration: InputDecoration(
                        hintText: "First Name",
                        label: Text("First Name"),
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
                        hintText: "Email",
                        label: Text("Email"),
                        prefixIcon: Icon(Iconsax.sms)),
                  )),
                  SizedBox(width: DimenSizes.spaceBtwItems),
                  Expanded(
                      child: TextFormField(
                    validator: (value) =>
                        CustomValidator.validatePhoneNumber(value),
                    decoration: InputDecoration(
                        hintText: "Phone Number",
                        label: Text("Phone Number"),
                        prefixIcon: Icon(Iconsax.call)),
                  )),
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Update Profile")),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
