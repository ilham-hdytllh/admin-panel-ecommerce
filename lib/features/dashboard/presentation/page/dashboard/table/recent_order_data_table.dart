import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/table/recent_order_table_source.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class RecentOrderDataTable extends StatelessWidget {
  const RecentOrderDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        tableHeight: 500,
        dataRowHeight: DimenSizes.xl * 1.2,
        columns: const [
          DataColumn2(label: Text("Order ID")),
          DataColumn2(label: Text("Date")),
          DataColumn2(label: Text("Items")),
          DataColumn2(label: Text("Status")),
          DataColumn2(label: Text("Amount"))
        ],
        source: RecentOrderTableSource());
  }
}
