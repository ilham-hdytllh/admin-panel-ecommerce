import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/widgets/card_dashboard.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/widgets/order_status_pie_chart.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/widgets/recent_order_table.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/widgets/weekly_sales_bar_chart.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageDashboardDesktop extends StatelessWidget {
  const PageDashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADING
              Text("Dashboard",
                  style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // CARDS
              Row(
                children: [
                  Expanded(
                    child: DashboardCard(
                      title: "Sales Total",
                      subtitle: "\$365.6",
                      stats: 25,
                      context: context,
                    ),
                  ),
                  SizedBox(
                    width: DimenSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: DashboardCard(
                      title: "Average Order Value",
                      subtitle: "\$25.6",
                      stats: 14,
                      context: context,
                    ),
                  ),
                  SizedBox(
                    width: DimenSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: DashboardCard(
                      title: "Total Orders",
                      subtitle: "36",
                      stats: 44,
                      context: context,
                    ),
                  ),
                  SizedBox(
                    width: DimenSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: DashboardCard(
                      title: "Visitors",
                      subtitle: "25.03",
                      stats: 2,
                      context: context,
                    ),
                  ),
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // GRAPH
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BAR
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        WeeklySalesBarChart(),
                        SizedBox(height: DimenSizes.spaceBtwSections),
                        RecentOrderTable(),
                      ],
                    ),
                  ),

                  SizedBox(width: DimenSizes.spaceBtwSections),

                  // PIE
                  Expanded(
                    child: OrderStatusPiceChart(),
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
