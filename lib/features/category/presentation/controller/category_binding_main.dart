import 'package:admin_panel_ecommerce/features/category/presentation/controller/category_controller_main.dart';
import 'package:get/get.dart';

class CategoryBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryControllerMain());
  }
}
