import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/data_table/table_header.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/main/table/order_data_table.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageOrderDesktop extends StatelessWidget {
  const PageOrderDesktop({super.key});

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
                  heading: "Orders",
                  breadCumbItems: ["Orders"],
                  returnToPreviousPage: false),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // BODY
              CustomRoundedContainer(
                child: Column(
                  children: [
                    // Table Header
                    TableHeader(
                      hintText: "Search Orders",
                    ),
                    SizedBox(height: DimenSizes.spaceBtwItems),

                    // Orders Table
                    OrderDataTable(),
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
