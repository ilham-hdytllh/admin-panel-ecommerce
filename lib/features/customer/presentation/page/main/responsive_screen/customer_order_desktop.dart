import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/data_table/table_header.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/main/table/customer_data_table.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageCustomerDesktop extends StatelessWidget {
  const PageCustomerDesktop({super.key});

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
                  heading: "Customers",
                  breadCumbItems: ["Customers"],
                  returnToPreviousPage: false),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // BODY
              CustomRoundedContainer(
                child: Column(
                  children: [
                    // Table Header
                    TableHeader(
                      hintText: "Search Customers",
                    ),
                    SizedBox(height: DimenSizes.spaceBtwItems),

                    // Customers Table
                    CustomerDataTable(),
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
