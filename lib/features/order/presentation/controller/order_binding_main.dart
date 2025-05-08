import 'package:admin_panel_ecommerce/features/order/presentation/controller/order_controller_main.dart';
import 'package:get/get.dart';

class OrderBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderControllerMain());
  }
}
