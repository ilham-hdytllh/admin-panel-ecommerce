import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TableActionButton extends StatelessWidget {
  const TableActionButton(
      {super.key,
      this.onViewPressed,
      this.onEditPressed,
      this.onDeletePressed});

  final VoidCallback? onViewPressed;
  final VoidCallback? onEditPressed;
  final VoidCallback? onDeletePressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (onViewPressed != null)
          IconButton(
              onPressed: onViewPressed,
              icon: Icon(
                Iconsax.eye,
                color: CustomColors.darkerGrey,
              )),
        if (onEditPressed != null)
          IconButton(
              onPressed: onEditPressed,
              icon: Icon(
                Iconsax.pen_add,
                color: CustomColors.primary,
              )),
        if (onDeletePressed != null)
          IconButton(
              onPressed: onDeletePressed,
              icon: Icon(
                Iconsax.trash,
                color: CustomColors.error,
              ))
      ],
    );
  }
}
