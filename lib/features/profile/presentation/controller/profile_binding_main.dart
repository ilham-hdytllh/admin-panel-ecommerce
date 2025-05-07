import 'package:admin_panel_ecommerce/features/profile/presentation/controller/profile_controller_main.dart';
import 'package:get/get.dart';

class ProfileBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileControllerMain());
  }
}
