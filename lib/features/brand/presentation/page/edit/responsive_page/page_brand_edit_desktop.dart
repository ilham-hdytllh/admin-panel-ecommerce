import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/edit/widgets/edit_brand_form.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';

class PageBrandEditDesktop extends StatelessWidget {
  const PageBrandEditDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              BreadcrumbWithHeading(
                  heading: "Update Brand",
                  breadCumbItems: [AppRoutes.categories, "Update Brand"],
                  returnToPreviousPage: true),
              SizedBox(height: DimenSizes.spaceBtwSections),

              EditBrandForm(),
            ],
          ),
        ),
      ),
    );
  }
}
