import 'package:admin_panel_ecommerce/common/widgets/components/sidebars/sidebar_controller.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItemSidebar extends StatelessWidget {
  const MenuItemSidebar({
    super.key,
    required this.route,
    required this.icon,
    required this.itemName,
  });

  final String route;
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    final sidebarController = Get.put(SidebarController());
    return InkWell(
      onTap: () => sidebarController.menuOnTap(route),
      onHover: (hovering) => hovering
          ? sidebarController.changeHoveritem(route)
          : sidebarController.changeHoveritem(""),
      child: Obx(
        () => Container(
          margin: EdgeInsets.symmetric(vertical: DimenSizes.xs),
          decoration: BoxDecoration(
            color: sidebarController.isHovering(route) ||
                    sidebarController.isActive(route)
                ? CustomColors.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(DimenSizes.cardRadiusMd),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ICON
              Padding(
                  padding: const EdgeInsets.only(
                      left: DimenSizes.lg,
                      top: DimenSizes.md,
                      bottom: DimenSizes.md,
                      right: DimenSizes.md),
                  child: sidebarController.isActive(route)
                      ? Icon(icon, size: 22, color: CustomColors.white)
                      : Icon(icon,
                          size: 22,
                          color: sidebarController.isHovering(route)
                              ? CustomColors.white
                              : CustomColors.darkGrey)),
              // TITLE
              if (sidebarController.isHovering(route) ||
                  sidebarController.isActive(route))
                Flexible(
                    child: Text(itemName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: CustomColors.white)))
              else
                Flexible(
                  child: Text(itemName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: CustomColors.darkGrey)),
                )
            ],
          ),
        ),
      ),
    );
  }
}
