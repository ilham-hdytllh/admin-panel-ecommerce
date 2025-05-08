import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/data_table/table_header.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/table/orders_customer_data_table.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/widget/customer_information.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/widget/shipping_address.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';

class PageCustomerDetailMobile extends StatelessWidget {
  const PageCustomerDetailMobile({super.key});

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
                  heading: "Ilham",
                  breadCumbItems: [AppRoutes.customers, "Details"],
                  returnToPreviousPage: true),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // BODY
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CustomerInformation(),
                      SizedBox(height: DimenSizes.spaceBtwItems),
                      ShippingAddress(),
                    ],
                  ),
                  SizedBox(height: DimenSizes.spaceBtwItems),
                  CustomRoundedContainer(
                    child: Column(
                      children: [
                        // Table Header
                        TableHeader(
                          hintText: "Search Orders",
                        ),
                        SizedBox(height: DimenSizes.spaceBtwItems),

                        // Customer Orders Table
                        OrdersCustomerDataTable(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
