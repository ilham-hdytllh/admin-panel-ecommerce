import 'package:admin_panel_ecommerce/features/dashboard/presentation/controller/dashboard_controller_main.dart';
import 'package:get/get.dart';

class DashboardBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardControllerMain());
  }
}
