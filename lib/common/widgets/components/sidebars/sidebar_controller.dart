import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:get/get.dart';

class SidebarController extends GetxController {
  final activeItem = Rx<String>(AppRoutes.dashboard);
  final hoverItem = Rx<String>('');

  void changeActiveitem(String route) => activeItem.value = route;

  void changeHoveritem(String route) {
    if (activeItem.value != route) {
      hoverItem.value = route;
    }
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHovering(String route) => hoverItem.value == route;

  void menuOnTap(String route) {
    if (!isActive(route)) {
      changeActiveitem(route);

      if (CustomDeviceUtils.isMobileScreen(Get.context!)) {
        Get.back();
      }

      Get.toNamed(route);
    }
  }
}
