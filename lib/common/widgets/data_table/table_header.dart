import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TableHeader extends StatelessWidget {
  const TableHeader(
      {super.key,
      this.onPressed,
      this.buttonText,
      this.searchController,
      this.searchOnChange,
      required this.hintText});

  final Function()? onPressed;
  final String? buttonText;
  final String hintText;
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
                Visibility(
                  visible: buttonText != null,
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: onPressed, child: Text(buttonText ?? "")),
                  ),
                )
              ],
            )),
        Expanded(
            flex: CustomDeviceUtils.isDesktopScreen(context) ? 2 : 1,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: hintText, prefixIcon: Icon(Iconsax.search_normal)),
            ))
      ],
    );
  }
}
