import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/Banner/presentation/page/main/table/Banner_table_source.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class BannerDataTable extends StatelessWidget {
  const BannerDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        dataRowHeight: 110,
        columns: [
          DataColumn2(label: Text("Banner")),
          DataColumn2(label: Text("Redirect Screen")),
          DataColumn2(label: Text("Active")),
          DataColumn2(label: Text("Action"), fixedWidth: 100)
        ],
        source: BannerTableSource());
  }
}
