import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/images/image_uploader.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ImageAndMeta extends StatelessWidget {
  const ImageAndMeta({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      child: Column(
        children: [
          CustomImageUploader(
            right: 10,
            bottom: 20,
            left: null,
            width: 200,
            height: 200,
            circular: true,
            icon: Iconsax.camera,
            imageType: ImageType.asset,
            image: AssetImages.darkAppLogo,
          ),
          SizedBox(height: DimenSizes.spaceBtwItems),
          Text("E Commerce", style: Theme.of(context).textTheme.headlineLarge),
          SizedBox(height: DimenSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
