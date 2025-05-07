import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/main/table/category_table_source.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class CategoryDataTable extends StatelessWidget {
  const CategoryDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        columns: const [
          DataColumn2(label: Text("Category")),
          DataColumn2(label: Text("Parent Category")),
          DataColumn2(label: Text("Featured")),
          DataColumn2(label: Text("Date")),
          DataColumn2(label: Text("Action"), fixedWidth: 100)
        ],
        source: CategoryTableSource());
  }
}
