import 'package:admin_panel_ecommerce/common/widgets/data_table/paginated_data_table.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/main/table/brand_table_source.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/widgets.dart';

class BrandDataTable extends StatelessWidget {
  const BrandDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaginatedDataTable(
        minWidth: 700,
        columns: [
          DataColumn2(
              label: Text("Brand"),
              fixedWidth:
                  CustomDeviceUtils.isMobileScreen(context) ? null : 200),
          DataColumn2(label: Text("Categories")),
          DataColumn2(
              label: Text("Featured"),
              fixedWidth:
                  CustomDeviceUtils.isMobileScreen(context) ? null : 100),
          DataColumn2(
              label: Text("Date"),
              fixedWidth:
                  CustomDeviceUtils.isMobileScreen(context) ? null : 200),
          DataColumn2(
              label: Text("Action"),
              fixedWidth:
                  CustomDeviceUtils.isMobileScreen(context) ? null : 100)
        ],
        source: BrandTableSource());
  }
}
