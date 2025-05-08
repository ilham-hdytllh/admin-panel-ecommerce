import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/main/table/customer_table_source.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class CustomerDataTable extends StatelessWidget {
  const CustomerDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        columns: [
          DataColumn2(label: Text("Customer")),
          DataColumn2(label: Text("Email")),
          DataColumn2(label: Text("Phone Number")),
          DataColumn2(label: Text("Registered")),
          DataColumn2(label: Text("Action"), fixedWidth: 100)
        ],
        source: CustomerTableSource());
  }
}
