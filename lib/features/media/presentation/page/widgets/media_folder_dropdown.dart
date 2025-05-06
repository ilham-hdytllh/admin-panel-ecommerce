import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaFolderDropdown extends StatelessWidget {
  const MediaFolderDropdown({super.key, this.onChanged});

  final Function(MediaCategory?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final mediaController = Get.find<MediaControllerMain>();
    return Obx(
      () => SizedBox(
        width: 140,
        child: DropdownButtonFormField(
            isExpanded: false,
            value: mediaController.selectedPath.value,
            items: MediaCategory.values
                .map((category) => DropdownMenuItem(
                    value: category,
                    child: Text(category.name.capitalize.toString())))
                .toList(),
            onChanged: onChanged),
      ),
    );
  }
}
