import 'package:admin_panel_ecommerce/features/Banner/presentation/controller/Banner_controller_main.dart';
import 'package:get/get.dart';

class BannerBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BannerControllerMain());
  }
}
