import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/controller/dashboard_controller_main.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentOrderTableSource extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    final order = DashboardControllerMain.orders[index];
    return DataRow2(cells: [
      DataCell(Text(order.id ?? "",
          style: Theme.of(Get.context!)
              .textTheme
              .bodyLarge!
              .apply(color: CustomColors.primary))),
      DataCell(Text(HelperFunctions.getFormattedDate(order.orderDate))),
      DataCell(Text("5 Items")),
      DataCell(CustomRoundedContainer(
        radius: DimenSizes.sm,
        padding: EdgeInsets.symmetric(
            vertical: DimenSizes.xs, horizontal: DimenSizes.md),
        backgroundColor: HelperFunctions.getOrderStatusColor(order.status)
            .withValues(alpha: 0.1),
        child: Text(
          order.status.name.capitalize.toString(),
          style: TextStyle(
              color: HelperFunctions.getOrderStatusColor(order.status)),
        ),
      )),
      DataCell(Text("\$${order.totalAmount}")),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => DashboardControllerMain.orders.length;

  @override
  int get selectedRowCount => 0;
}
