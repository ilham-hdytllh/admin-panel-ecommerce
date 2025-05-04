import 'package:admin_panel_ecommerce/common/widgets/images/circular_image.dart';
import 'package:admin_panel_ecommerce/common/widgets/components/sidebars/menu/menu_item.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
            color: CustomColors.white,
            border:
                Border(right: BorderSide(color: CustomColors.grey, width: 1))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image
              CustomCircularImage(
                  width: 100,
                  height: 100,
                  image: AssetImages.darkAppLogo,
                  backgroundColor: Colors.transparent),
              SizedBox(height: DimenSizes.spaceBtwSections),
              Padding(
                padding: EdgeInsets.all(DimenSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'MENU',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .apply(letterSpacingDelta: 1.2),
                    ),

                    // MENU ITEMS
                    MenuItemSidebar(
                      route: AppRoutes.dashboard,
                      icon: Iconsax.status,
                      itemName: "Dashboard",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.media,
                      icon: Iconsax.image,
                      itemName: "Media",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.banners,
                      icon: Iconsax.picture_frame,
                      itemName: "Banner",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
