import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/data_table/table_header.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/main/table/brand_data_table.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBrandDesktop extends StatelessWidget {
  const PageBrandDesktop({super.key});

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
                  heading: "Brands",
                  breadCumbItems: ["Brands"],
                  returnToPreviousPage: false),
              SizedBox(height: DimenSizes.spaceBtwSections),

              CustomRoundedContainer(
                child: Column(
                  children: [
                    // Table Header
                    TableHeader(
                        buttonText: 'Create New Brand',
                        hintText: "Search Brand",
                        onPressed: () => Get.toNamed(AppRoutes.createBrand)),
                    SizedBox(height: DimenSizes.spaceBtwItems),

                    // Brand Table
                    BrandDataTable(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
