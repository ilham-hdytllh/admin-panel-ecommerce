import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/main/table/product_table_source.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class ProductDataTable extends StatelessWidget {
  const ProductDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        columns: const [
          DataColumn2(label: Text("Product")),
          DataColumn2(label: Text("Stock")),
          DataColumn2(label: Text("Brand")),
          DataColumn2(label: Text("Price")),
          DataColumn2(label: Text("Date")),
          DataColumn2(label: Text("Action"), fixedWidth: 100)
        ],
        source: ProductTableSource());
  }
}
