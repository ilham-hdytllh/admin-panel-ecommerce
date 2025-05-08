import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/widget/customer_info.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/widget/order_info.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/widget/order_items.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/widget/order_transaction.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';

class PageOrderDetailMobile extends StatelessWidget {
  const PageOrderDetailMobile({super.key});

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
                  heading: "[44aadc]",
                  breadCumbItems: [AppRoutes.orders, "Details"],
                  returnToPreviousPage: true),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // BODY
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      OrderInfo(),
                      SizedBox(height: DimenSizes.spaceBtwSections),
                      OrderItems(),
                      SizedBox(height: DimenSizes.spaceBtwSections),
                      OrderTransaction(),
                    ],
                  ),
                  SizedBox(height: DimenSizes.spaceBtwSections),
                  CustomerInfo(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
