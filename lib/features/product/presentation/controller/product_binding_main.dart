import 'package:admin_panel_ecommerce/features/product/presentation/controller/product_controller_main.dart';
import 'package:get/get.dart';

class ProductBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductControllerMain());
  }
}
