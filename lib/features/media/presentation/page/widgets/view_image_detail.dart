import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:clipboard/clipboard.dart';

class ViewImageDetail extends StatelessWidget {
  const ViewImageDetail({super.key, required this.image});

  final MediaEntityImage image;

  @override
  Widget build(BuildContext context) {
    final mediaController = Get.find<MediaControllerMain>();
    return SingleChildScrollView(
      child: Dialog(
        child: CustomRoundedContainer(
          width: CustomDeviceUtils.isDesktopScreen(context)
              ? MediaQuery.of(context).size.width * 0.4
              : double.infinity,
          padding: EdgeInsets.all(DimenSizes.spaceBtwItems),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    CustomRoundedContainer(
                      backgroundColor: CustomColors.primaryBackground,
                      child: CustomRoundedImage(
                        imageType: ImageType.network,
                        image: image.url,
                        applyImageRadius: true,
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: CustomDeviceUtils.isDesktopScreen(context)
                            ? MediaQuery.of(context).size.width * 0.4
                            : double.infinity,
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                            onPressed: () => Get.back(),
                            icon: Icon(Iconsax.close_circle))),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: DimenSizes.spaceBtwItems),
              Row(children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    "Image Name :",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Expanded(
                    child: Text(image.fileName,
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis)),
              ]),
              Row(children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    "Image URL :",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Expanded(
                    child: Text(image.url,
                        style: Theme.of(context).textTheme.titleLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis)),
                SizedBox(
                  width: 120,
                  child: OutlinedButton(
                      onPressed: () {
                        FlutterClipboard.copy(image.url).then((val) =>
                            CustomLoaders.customToast(message: "URL copied!"));
                      },
                      child: Text("Copy URL")),
                )
              ]),
              SizedBox(height: DimenSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 300,
                      child: TextButton(
                        onPressed: () =>
                            mediaController.deleteImageConfirmation(image),
                        child: Text("Delete Image",
                            style: TextStyle(
                              color: CustomColors.error,
                            )),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
