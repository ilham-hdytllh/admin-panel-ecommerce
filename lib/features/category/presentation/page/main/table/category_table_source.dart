import 'package:admin_panel_ecommerce/common/widgets/data_table/table_action_button.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CategoryTableSource extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow2(cells: [
      DataCell(Row(
        children: [
          CustomRoundedImage(
            height: 50,
            width: 50,
            image: AssetImages.darkAppLogo,
            padding: DimenSizes.sm,
            imageType: ImageType.asset,
            borderRadius: DimenSizes.borderRadiusMd,
            backgroundColor: CustomColors.primaryBackground,
          ),
          SizedBox(width: DimenSizes.spaceBtwItems),
          Expanded(
              child: Text("Name",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(Get.context!).textTheme.bodyLarge!.apply(
                        color: CustomColors.primary,
                      )))
        ],
      )),
      DataCell(Text("Parent")),
      DataCell(Icon(
        Iconsax.heart5,
        color: CustomColors.primary,
      )),
      DataCell(Text(DateTime.now().toString())),
      DataCell(TableActionButton(
        onEditPressed: () => Get.toNamed(AppRoutes.editCategory),
        onDeletePressed: () {},
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 5;

  @override
  int get selectedRowCount => 0;
}
