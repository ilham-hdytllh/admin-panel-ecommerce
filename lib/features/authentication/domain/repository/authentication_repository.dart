import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/authentication/data/model/authentication_request_signin.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/entity/user_entity_data.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthenticationRepository {
  Future<Either<ServiceFailure, String>> signIn(
      AuthenticationRequestSignin? request);
  Future<Either<ServiceFailure, String>> signOut();

  Future<Either<ServiceFailure, UserEntityData>> fetchUserByUid(String? uid);
}
