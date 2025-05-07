import 'package:admin_panel_ecommerce/features/setting/presentation/controller/setting_controller_main.dart';
import 'package:get/get.dart';

class SettingBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingControllerMain());
  }
}
