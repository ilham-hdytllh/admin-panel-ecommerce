import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_controller_main.dart';
import 'package:get/get.dart';

class MediaBindingMain extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MediaControllerMain());
  }
}
