import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/common/widgets/loaders/animation_loader.dart';
import 'package:admin_panel_ecommerce/common/widgets/loaders/loader_animation.dart';
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
  const MediaContent({super.key});

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
              Text("Gallery Folder",
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(width: DimenSizes.spaceBtwItems),
              MediaFolderDropdown(onChanged: mediaController.onChangeCategory),
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
                            child: CustomRoundedImage(
                              width: 90,
                              height: 90,
                              padding: DimenSizes.sm,
                              imageType: ImageType.network,
                              image: image.url,
                              backgroundColor: CustomColors.primaryBackground,
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
}
