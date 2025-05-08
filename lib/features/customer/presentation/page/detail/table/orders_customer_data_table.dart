import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/table/orders_customer_table_source.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class OrdersCustomerDataTable extends StatelessWidget {
  const OrdersCustomerDataTable({super.key});

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
        ],
        source: OrdersCustomerTableSource());
  }
}
