import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/table/recent_order_data_table.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RecentOrderTable extends StatelessWidget {
  const RecentOrderTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Orders",
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: DimenSizes.spaceBtwSections),
          RecentOrderDataTable(),
        ],
      ),
    );
  }
}
