import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/features/profile/presentation/page/widget/image_and_meta.dart';
import 'package:admin_panel_ecommerce/features/profile/presentation/page/widget/profile_form.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageProfileMobile extends StatelessWidget {
  const PageProfileMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            children: [
              // HEADER
              BreadcrumbWithHeading(
                  heading: "Profile",
                  breadCumbItems: ["Profile"],
                  returnToPreviousPage: false),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // BODY
              Column(
                children: [
                  ImageAndMeta(),
                  SizedBox(width: DimenSizes.spaceBtwSections),
                  ProfileForm(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
