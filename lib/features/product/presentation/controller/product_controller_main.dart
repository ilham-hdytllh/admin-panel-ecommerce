import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:get/get.dart';

class ProductControllerMain extends GetxController {
  Rx<String?> selectedThumbnailsImageUrl = Rx<String?>(null);
  RxList<String> additionalProductImageUrls = <String>[].obs;

  void selectThumbnailImage() async {
    final controller = Get.put(MediaControllerMain());

    List<MediaEntityImage>? selectedImages =
        await controller.selectImagesFromMedia();

    if (selectedImages != null && selectedImages.isNotEmpty) {
      final selectedImage = selectedImages.first;

      selectedThumbnailsImageUrl.value = selectedImage.url;
    }
  }

  void selectMultipleProductImages() async {
    final controller = Get.put(MediaControllerMain());

    List<MediaEntityImage>? selectedImages =
        await controller.selectImagesFromMedia(
            multipleSelection: true, selectedUrls: additionalProductImageUrls);

    if (selectedImages != null && selectedImages.isNotEmpty) {
      additionalProductImageUrls
          .assignAll(selectedImages.map((e) => e.url).toList());
    }
  }

  Future<void> removeImage(int index) async {
    additionalProductImageUrls.removeAt(index);
  }
}
