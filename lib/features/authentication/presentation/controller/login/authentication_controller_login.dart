import 'package:admin_panel_ecommerce/features/authentication/data/client/authentication_client_main.dart';
import 'package:admin_panel_ecommerce/features/authentication/data/model/authentication_request_signin.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/usecase/authentication_usecase_signin.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/helpers/network_manager.dart';
import 'package:admin_panel_ecommerce/utils/popups/full_screen_loader.dart';
import 'package:admin_panel_ecommerce/utils/popups/loaders.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthenticationControllerLogin extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // Signin Usecase
  final usecaseSignup = AuthenticationUsecaseSignin(AuthenticationClientMain());
  Rx<bool> showPassword = Rx(true);
  // late BuildContext _context;

  @override
  void onInit() {
    // _context = Get.context!;
    super.onInit();
  }

  Future<void> signIn() async {
    try {
      // Loading
      CustomFullScreenLoader.openLoadingDialog(
          "Please wait.....", AssetImages.docerAnimation);

      // Check Internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        CustomFullScreenLoader.stopLoading();
        return;
      }

      final request = AuthenticationRequestSignin(
          email: emailController.text, password: passwordController.text);

      final result = await usecaseSignup.execute(request);
      result.fold(
        (failure) {
          CustomFullScreenLoader.stopLoading();
          CustomLoaders.errorSnackBar(title: failure.message);
        },
        (response) {
          Get.offAllNamed(AppRoutes.dashboard);
        },
      );
    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomLoaders.errorSnackBar(title: e.toString());
    }
  }
}
