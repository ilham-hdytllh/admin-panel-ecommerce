import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({
    super.key,
    required this.columns,
    required this.rows,
  });

  /// List of columns for the data table
  final List<DataColumn> columns;

  /// List of rows for the data table
  final List<DataRow> rows;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Set the height of the data table to 80% of the screen height
      height: MediaQuery.of(context).size.height * 0.8,
      child: DataTable2(
        // Assign the provided columns to the data table
        columns: columns,
        // Assign the provided rows to the data table
        rows: rows,
        // Set the minimum width of the data table
        minWidth: 600,
        // Set the spacing between columns
        columnSpacing: 12,
        // Set the horizontal margin of the data table
        horizontalMargin: 12,
        // Set the color of the heading row
        headingRowColor:
            WidgetStateProperty.resolveWith((states) => CustomColors.primary),
        // Set the decoration for the data table
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(DimenSizes.borderRadiusMd)),
        ),
        // Set the decoration for the heading row of the data table
        headingRowDecoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(DimenSizes.borderRadiusMd),
              topRight: Radius.circular(DimenSizes.borderRadiusMd)),
        ),
      ),
    );
  }
}
