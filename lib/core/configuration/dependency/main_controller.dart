import 'package:admin_panel_ecommerce/features/authentication/data/client/authentication_client_main.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/entity/user_entity_data.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/usecase/authentication_usecase_fetch_detail_user.dart';
import 'package:admin_panel_ecommerce/utils/popups/loaders.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserController extends GetxController {
  // Fetch User Usecase
  final usecaseFecthDetailUser =
      AuthenticationUsecaseFetchDetailUser(AuthenticationClientMain());
  final currentAccount = Rxn<UserEntityData>(null);
  Rx<bool> isLoading = Rx(false);

  @override
  void onInit() {
    fetchUserDetail();
    super.onInit();
  }

  void fetchUserDetail() async {
    final uid = Supabase.instance.client.auth.currentUser?.id;
    print(uid);
    try {
      if (uid == null) {
        return;
      }
      isLoading.value = true;

      final result = await usecaseFecthDetailUser.execute(uid);
      result.fold(
        (failure) {
          CustomLoaders.errorSnackBar(title: failure.message);
        },
        (response) {
          print(response.toString());
          currentAccount.value = response;
        },
      );
    } catch (e) {
      CustomLoaders.errorSnackBar(title: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
