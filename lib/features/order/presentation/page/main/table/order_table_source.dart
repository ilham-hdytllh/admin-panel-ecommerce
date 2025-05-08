import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/data_table/table_action_button.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderTableSource extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow2(cells: [
      DataCell(Text("[#44aadc]",
          style: Theme.of(Get.context!).textTheme.bodyLarge!.apply(
                color: CustomColors.primary,
              ))),
      DataCell(Text(HelperFunctions.getFormattedDate(DateTime.now()))),
      DataCell(Text("5 Items")),
      DataCell(CustomRoundedContainer(
        radius: DimenSizes.sm,
        padding: EdgeInsets.symmetric(
            vertical: DimenSizes.xs, horizontal: DimenSizes.md),
        backgroundColor:
            HelperFunctions.getOrderStatusColor(OrderStatus.shipped)
                .withValues(alpha: 0.1),
        child: Text(
          OrderStatus.shipped.name.capitalize.toString(),
          style: TextStyle(
              color: HelperFunctions.getOrderStatusColor(OrderStatus.shipped)),
        ),
      )),
      DataCell(Text("\$${245}")),
      DataCell(TableActionButton(
        onViewPressed: () => Get.toNamed(AppRoutes.detailOrder),
        onDeletePressed: () {},
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 5;

  @override
  int get selectedRowCount => 0;
}
