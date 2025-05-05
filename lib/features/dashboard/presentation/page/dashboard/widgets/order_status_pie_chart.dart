import 'package:admin_panel_ecommerce/common/widgets/containers/circular_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/controller/dashboard_controller_main.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderStatusPiceChart extends StatelessWidget {
  const OrderStatusPiceChart({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardControllerMain>();
    return CustomRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Order Status",
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: DimenSizes.spaceBtwSections),
          SizedBox(
            height: 400,
            child: PieChart(PieChartData(
                sections: controller.orderStatusData.entries.map((entry) {
              final status = entry.key;
              final count = entry.value;

              return PieChartSectionData(
                  radius: 100,
                  color: HelperFunctions.getOrderStatusColor(status),
                  title: count.toString(),
                  value: count.toDouble(),
                  titleStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.white));
            }).toList())),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: const [
                DataColumn(label: Text("Status")),
                DataColumn(label: Text("Orders")),
                DataColumn(label: Text("Total"))
              ],
              rows: controller.orderStatusData.entries.map((entry) {
                final status = entry.key;
                final count = entry.value;
                final totalAmount = controller.totalAmounts[status] ?? 0;
                return DataRow(cells: [
                  DataCell(Row(
                    children: [
                      CustomCircularContainer(
                        margin: EdgeInsets.only(right: DimenSizes.xs),
                        width: 20,
                        height: 20,
                        backgroundColor:
                            HelperFunctions.getOrderStatusColor(status),
                      ),
                      Expanded(child: Text(status.name.capitalizeFirst ?? ""))
                    ],
                  )),
                  DataCell(Text(count.toString())),
                  DataCell(Text("\$${totalAmount.toStringAsFixed(2)}"))
                ]);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
