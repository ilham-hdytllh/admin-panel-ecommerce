import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/widgets/media_folder_dropdown.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:get/get.dart';

class MediaUploader extends StatelessWidget {
  const MediaUploader({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaController = Get.find<MediaControllerMain>();
    return Obx(
      () => Visibility(
        visible: mediaController.showImageUploaderSection.value,
        child: Column(
          children: [
            // Drag and Drop Area
            CustomRoundedContainer(
              height: 250,
              showBorder: true,
              borderColor: CustomColors.borderPrimary,
              backgroundColor: CustomColors.primaryBackground,
              padding: EdgeInsets.all(DimenSizes.defaultSpace),
              child: Column(
                children: [
                  Expanded(
                      child: Stack(
                    alignment: Alignment.center,
                    children: [
                      DropzoneView(
                        mime: ['image/jpeg', 'image/png'],
                        operation: DragOperation.copy,
                        cursor: CursorType.Default,
                        onCreated: (ctrl) =>
                            mediaController.dropzoneViewController = ctrl,
                        onDropFile: mediaController.dropFile,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AssetImages.defaultMultiImageIcon,
                              width: 50, height: 50),
                          SizedBox(height: DimenSizes.spaceBtwItems),
                          Text("Drag and Drop Images here"),
                          SizedBox(height: DimenSizes.spaceBtwItems),
                          OutlinedButton(
                              onPressed: mediaController.selectedLocalImages,
                              child: Text("Select Images"))
                        ],
                      ),
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(height: DimenSizes.spaceBtwItems),

            // Selected Images in Local
            Visibility(
              visible: mediaController.selectedImagesToUpload.isNotEmpty,
              child: CustomRoundedContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Select Folder",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            SizedBox(width: DimenSizes.spaceBtwItems),
                            MediaFolderDropdown(
                              onChanged: mediaController.onChangeCategory,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: mediaController.clearSelectedImages,
                                child: Text("Remove All")),
                            SizedBox(width: DimenSizes.spaceBtwItems),
                            CustomDeviceUtils.isMobileScreen(context)
                                ? SizedBox.shrink()
                                : SizedBox(
                                    width: DimenSizes.buttonWidth,
                                    child: ElevatedButton(
                                        onPressed: mediaController
                                            .uploadImagesConfimation,
                                        child: Text("Upload")))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: DimenSizes.spaceBtwItems),
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: DimenSizes.spaceBtwItems / 2,
                      runSpacing: DimenSizes.spaceBtwItems / 2,
                      children: mediaController.selectedImagesToUpload
                          .where((image) => image.localImageToDisplay != null)
                          .map(
                            (element) => CustomRoundedImage(
                              width: 90,
                              height: 90,
                              padding: DimenSizes.sm,
                              imageType: ImageType.memory,
                              memoryImage: element.localImageToDisplay,
                              backgroundColor: CustomColors.primaryBackground,
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: DimenSizes.spaceBtwSections),
                    CustomDeviceUtils.isMobileScreen(context)
                        ? SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("Upload")))
                        : SizedBox.shrink()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
