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
                    MenuItemSidebar(
                      route: AppRoutes.products,
                      icon: Iconsax.shopping_bag,
                      itemName: "Product",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.categories,
                      icon: Iconsax.menu,
                      itemName: "Category",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.brands,
                      icon: Iconsax.dcube,
                      itemName: "Brand",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.customers,
                      icon: Iconsax.people,
                      itemName: "Customers",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.orders,
                      icon: Iconsax.task_square,
                      itemName: "Order",
                    ),
                    SizedBox(height: DimenSizes.spaceBtwItems),
                    Text(
                      'OTHER',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .apply(letterSpacingDelta: 1.2),
                    ),

                    // OTHER ITEMS
                    MenuItemSidebar(
                      route: AppRoutes.profile,
                      icon: Iconsax.user,
                      itemName: "Profile",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.setting,
                      icon: Iconsax.setting_2,
                      itemName: "Setting",
                    ),
                    MenuItemSidebar(
                      route: AppRoutes.logout,
                      icon: Iconsax.logout,
                      itemName: "Logout",
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
