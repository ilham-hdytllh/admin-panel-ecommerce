import 'package:admin_panel_ecommerce/features/authentication/presentation/controller/login/authentication_controller_login.dart';
import 'package:get/get.dart';

class AuthenticationBindingLogin extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationControllerLogin());
  }
}
