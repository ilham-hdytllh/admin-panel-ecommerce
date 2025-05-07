import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TableHeader extends StatelessWidget {
  const TableHeader(
      {super.key,
      this.onPressed,
      required this.buttonText,
      this.searchController,
      this.searchOnChange});

  final Function()? onPressed;
  final String buttonText;
  final TextEditingController? searchController;
  final Function(String)? searchOnChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: CustomDeviceUtils.isDesktopScreen(context) ? 3 : 1,
            child: Row(
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () => Get.toNamed(AppRoutes.createCategory),
                      child: Text("Create New Category")),
                )
              ],
            )),
        Expanded(
            flex: CustomDeviceUtils.isDesktopScreen(context) ? 2 : 1,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Search Category",
                  prefixIcon: Icon(Iconsax.search_normal)),
            ))
      ],
    );
  }
}
