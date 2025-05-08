import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/main/table/order_table_source.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class OrderDataTable extends StatelessWidget {
  const OrderDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        columns: [
          DataColumn2(label: Text("Order ID")),
          DataColumn2(label: Text("Date")),
          DataColumn2(label: Text("Items")),
          DataColumn2(label: Text("Status")),
          DataColumn2(label: Text("Amount")),
          DataColumn2(label: Text("Action"), fixedWidth: 100)
        ],
        source: OrderTableSource());
  }
}
