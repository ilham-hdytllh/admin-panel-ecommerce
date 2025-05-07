import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/create/widgets/create_brand_form.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';

class PageBrandCreateDesktop extends StatelessWidget {
  const PageBrandCreateDesktop({super.key});

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
                  heading: "Create Brand",
                  breadCumbItems: [AppRoutes.brands, "Create Brand"],
                  returnToPreviousPage: true),
              SizedBox(height: DimenSizes.spaceBtwSections),

              CreateBrandForm(),
            ],
          ),
        ),
      ),
    );
  }
}
