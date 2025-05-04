import 'package:admin_panel_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.white,
        border: Border(bottom: BorderSide(color: CustomColors.grey, width: 1)),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: DimenSizes.md, vertical: DimenSizes.sm),
      child: AppBar(
        // leading
        automaticallyImplyLeading: false,
        leading: !CustomDeviceUtils.isDesktopScreen(context)
            ? IconButton(
                onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                icon: Icon(Iconsax.menu),
              )
            : null,
        // Search Field
        title: !CustomDeviceUtils.isMobileScreen(context)
            ? SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.search_normal),
                      hintText: "Search anything...."),
                ),
              )
            : null,
        // Action
        actions: [
          // Search Icon in Mobile
          if (!CustomDeviceUtils.isMobileScreen(context))
            IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal)),
          // Notification
          IconButton(onPressed: () {}, icon: Icon(Iconsax.notification)),
          const SizedBox(
            width: DimenSizes.spaceBtwItems / 2,
          ),
          // User
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              CustomRoundedImage(
                width: 40,
                padding: 2,
                height: 40,
                imageType: ImageType.asset,
                image: AssetImages.user,
              ),
              SizedBox(
                width: DimenSizes.sm,
              ),
              // Name
              if (!CustomDeviceUtils.isMobileScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Admin",
                        style: Theme.of(context).textTheme.titleLarge),
                    Text("support@admin.com",
                        style: Theme.of(context).textTheme.labelMedium),
                  ],
                )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(CustomDeviceUtils.getAppBarHeight() + 15);
}
