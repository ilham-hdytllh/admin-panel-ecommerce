import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/features/Setting/presentation/page/widget/image_and_meta.dart';
import 'package:admin_panel_ecommerce/features/setting/presentation/page/widget/profile_form.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageSettingDesktop extends StatelessWidget {
  const PageSettingDesktop({super.key});

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
                  heading: "Setting",
                  breadCumbItems: ["Setting"],
                  returnToPreviousPage: false),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // BODY
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: ImageAndMeta()),
                  SizedBox(width: DimenSizes.spaceBtwSections),
                  Expanded(flex: 2, child: SettingForm()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
