import 'package:admin_panel_ecommerce/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NetworkManager(), fenix: true);
  }
}
