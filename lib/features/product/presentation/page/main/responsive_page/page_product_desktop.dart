// import 'package:admin_panel_ecommerce/features/product/presentation/controller/product_controller_main.dart';
import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/data_table/table_header.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/main/table/product_data_table.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageProductDesktop extends StatelessWidget {
  const PageProductDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // final productController = Get.find<ProductControllerMain>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            children: [
              // HEADER
              BreadcrumbWithHeading(
                  heading: "Products",
                  breadCumbItems: ["Products"],
                  returnToPreviousPage: false),
              SizedBox(height: DimenSizes.spaceBtwSections),

              CustomRoundedContainer(
                child: Column(
                  children: [
                    // Table Header
                    TableHeader(
                        buttonText: 'Create New Product',
                        hintText: 'Search Product',
                        onPressed: () => Get.toNamed(AppRoutes.createProduct)),
                    SizedBox(height: DimenSizes.spaceBtwItems),

                    // Product Table
                    ProductDataTable(),
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
