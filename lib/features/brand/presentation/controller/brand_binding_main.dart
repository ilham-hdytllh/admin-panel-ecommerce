import 'package:admin_panel_ecommerce/features/brand/presentation/controller/brand_controller_main.dart';
import 'package:get/get.dart';

class BrandBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BrandControllerMain());
  }
}
