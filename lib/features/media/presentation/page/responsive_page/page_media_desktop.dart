import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/widgets/media_content.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/widgets/media_uploader.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PageMediaDesktop extends StatelessWidget {
  const PageMediaDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaController = Get.find<MediaControllerMain>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            children: [
              // HEADER
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BreadcrumbWithHeading(
                      heading: "Media",
                      breadCumbItems: [],
                      returnToPreviousPage: false),
                  SizedBox(
                    width: DimenSizes.buttonWidth * 1.5,
                    child: ElevatedButton.icon(
                        onPressed: () =>
                            mediaController.showImageUploaderSection.value =
                                !mediaController.showImageUploaderSection.value,
                        icon: Icon(Iconsax.cloud_add),
                        label: Text("Upload Image")),
                  ),
                ],
              ),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // UPLOAD AREA
              MediaUploader(),
              Obx(
                () => Visibility(
                    visible: mediaController.showImageUploaderSection.value,
                    child: SizedBox(height: DimenSizes.spaceBtwSections)),
              ),

              // MEDIA
              MediaContent(),
            ],
          ),
        ),
      ),
    );
  }
}
