import 'package:admin_panel_ecommerce/features/authentication/data/client/authentication_client_main.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/usecase/authentication_usecase_singout.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/popups/loaders.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:get/get.dart';

class SidebarController extends GetxController {
  final activeItem = Rx<String>(AppRoutes.dashboard);
  final hoverItem = Rx<String>('');

  // SingOut Usecase
  final usecaseSignOut =
      AuthenticationUsecaseSingOut(AuthenticationClientMain());

  void changeActiveitem(String route) => activeItem.value = route;

  void changeHoveritem(String route) {
    if (activeItem.value != route) {
      hoverItem.value = route;
    }
  }

  bool isActive(String route) => activeItem.value == route;
  bool isHovering(String route) => hoverItem.value == route;

  void menuOnTap(String route) async {
    if (route == AppRoutes.logout) {
      final result = await usecaseSignOut.execute();

      result.fold(
        (failure) {
          CustomLoaders.errorSnackBar(title: failure.message);
        },
        (response) {
          Get.offAllNamed(AppRoutes.login);
        },
      );
    } else {
      if (!isActive(route)) {
        changeActiveitem(route);

        if (CustomDeviceUtils.isMobileScreen(Get.context!)) {
          Get.back();
        }

        Get.toNamed(route);
      }
    }
  }
}
