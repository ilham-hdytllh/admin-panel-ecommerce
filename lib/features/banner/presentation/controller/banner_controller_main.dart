import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerControllerMain extends GetxController {
  final nestedKey = GlobalKey<NavigatorState>();
  Rx<String?> selectedThumbnailsImageUrl = Rx<String?>(null);

  void selectThumbnailImage() async {
    final controller = Get.put(MediaControllerMain());

    List<MediaEntityImage>? selectedImages =
        await controller.selectImagesFromMedia();

    if (selectedImages != null && selectedImages.isNotEmpty) {
      final selectedImage = selectedImages.first;

      selectedThumbnailsImageUrl.value = selectedImage.url;
    }
  }
}
