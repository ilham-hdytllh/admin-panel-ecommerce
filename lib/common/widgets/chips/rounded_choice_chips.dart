import 'package:admin_panel_ecommerce/common/widgets/containers/circular_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

/// A customized choice chip that can act like a radio button.
class CustomChoiceChip extends StatelessWidget {
  /// Create a chip that acts like a radio button.
  ///
  /// Parameters:
  ///   - text: The label text for the chip.
  ///   - selected: Whether the chip is currently selected.
  ///   - onSelected: Callback function when the chip is selected.
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Use a transparent canvas color to match the existing styling.
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        // Use this function to get Colors as a Chip
        avatar: HelperFunctions.getColor(text) != null
            ? CustomCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: HelperFunctions.getColor(text)!)
            : null,
        selected: selected,
        onSelected: onSelected,
        backgroundColor: HelperFunctions.getColor(text),
        labelStyle: TextStyle(color: selected ? CustomColors.white : null),
        shape: HelperFunctions.getColor(text) != null
            ? const CircleBorder()
            : null,
        label: HelperFunctions.getColor(text) == null
            ? Text(text)
            : const SizedBox(),
        padding: HelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        labelPadding: HelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
      ),
    );
  }
}
