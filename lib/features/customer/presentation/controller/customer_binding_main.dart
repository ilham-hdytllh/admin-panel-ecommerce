import 'package:admin_panel_ecommerce/features/customer/presentation/controller/customer_controller_main.dart';
import 'package:get/get.dart';

class CustomerBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomerControllerMain());
  }
}
