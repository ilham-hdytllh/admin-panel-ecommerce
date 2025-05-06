import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/common/widgets/loaders/animation_loader.dart';
import 'package:admin_panel_ecommerce/common/widgets/loaders/loader_animation.dart';
import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/widgets/media_folder_dropdown.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/widgets/view_image_detail.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MediaContent extends StatelessWidget {
  MediaContent(
      {super.key,
      this.allowSelection = false,
      this.allowMultipleSelection = false,
      this.alreadySelectedUrls,
      this.onImageSelected});

  final bool allowSelection;
  final bool allowMultipleSelection;
  final List<String>? alreadySelectedUrls;
  final List<MediaEntityImage> selectedImages = [];
  final Function(List<MediaEntityImage> selectedImages)? onImageSelected;
  @override
  Widget build(BuildContext context) {
    final mediaController = Get.find<MediaControllerMain>();
    return CustomRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Media Image Header
          Row(
            children: [
              Row(
                children: [
                  Text("Gallery Folder",
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(width: DimenSizes.spaceBtwItems),
                  MediaFolderDropdown(
                      onChanged: mediaController.onChangeCategory),
                ],
              ),
              if (allowSelection) _buildSelectedImagesButton(),
            ],
          ),
          SizedBox(height: DimenSizes.spaceBtwItems),

          // Show Media
          Obx(
            () => Visibility(
              visible: !mediaController.isLoading.value,
              replacement:
                  SizedBox(height: 200, child: CustomLoaderAnimation()),
              child: Visibility(
                visible: mediaController.allImages.isNotEmpty,
                replacement: CustomAnimationLoaderWidget(
                  width: 150,
                  height: 150,
                  text: "Select your Desired Folder",
                  animation: AssetImages.packageAnimation,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: DimenSizes.spaceBtwItems / 2,
                    runSpacing: DimenSizes.spaceBtwItems / 2,
                    children: mediaController.allImages
                        .map(
                          (image) => GestureDetector(
                            onTap: () =>
                                Get.dialog(ViewImageDetail(image: image)),
                            child: SizedBox(
                              width: 140,
                              height: 180,
                              child: Column(
                                children: [
                                  if (allowSelection) ...{
                                    _buildImageCardWithCheckbox(image)
                                  } else ...{
                                    _buildImageCard(image),
                                  },
                                  Expanded(
                                      child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: DimenSizes.sm),
                                    child: Text(
                                      image.fileName,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList()),
              ),
            ),
          ),

          Padding(
            padding:
                EdgeInsets.symmetric(vertical: DimenSizes.spaceBtwSections),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Visibility(
                    visible: (mediaController.allImages.isNotEmpty &&
                            mediaController.allImages.length >= 10) &&
                        mediaController.offset != 0,
                    child: SizedBox(
                      width: DimenSizes.buttonWidth,
                      child: ElevatedButton.icon(
                        onPressed: mediaController.fetchImagesByCategory,
                        label: Text("Load More"),
                        icon: Icon(Iconsax.arrow_down),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageCard(MediaEntityImage image) {
    return CustomRoundedImage(
      width: 140,
      height: 140,
      padding: DimenSizes.sm,
      imageType: ImageType.network,
      image: image.url,
      margin: DimenSizes.spaceBtwItems / 2,
      backgroundColor: CustomColors.primaryBackground,
    );
  }

  Widget _buildImageCardWithCheckbox(MediaEntityImage image) {
    return Stack(
      children: [
        CustomRoundedImage(
          width: 140,
          height: 140,
          padding: DimenSizes.sm,
          imageType: ImageType.network,
          image: image.url,
          margin: DimenSizes.spaceBtwItems / 2,
          backgroundColor: CustomColors.primaryBackground,
        ),
        Positioned(
            top: DimenSizes.md,
            right: DimenSizes.md,
            child: Obx(() => Checkbox(
                value: image.isSelected.value,
                onChanged: (value) {
                  if (value != null) {
                    image.isSelected.value = value;

                    if (value) {
                      if (!allowMultipleSelection) {
                        for (var otherImage in selectedImages) {
                          if (otherImage != image) {
                            otherImage.isSelected.value = false;
                          }
                        }
                        selectedImages.clear();
                      }
                      selectedImages.add(image);
                    } else {
                      selectedImages.remove(image);
                    }
                  }
                }))),
      ],
    );
  }

  Widget _buildSelectedImagesButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 120,
          child: OutlinedButton.icon(
              onPressed: () => Get.back(),
              icon: Icon(Iconsax.close_circle),
              label: Text("Close")),
        ),
        SizedBox(width: DimenSizes.spaceBtwItems),
        SizedBox(
          width: 120,
          child: ElevatedButton.icon(
              onPressed: () => Get.back(result: selectedImages),
              icon: Icon(Iconsax.image),
              label: Text("Add")),
        ),
      ],
    );
  }
}
