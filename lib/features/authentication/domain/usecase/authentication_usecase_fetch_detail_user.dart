import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/entity/user_entity_data.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/repository/authentication_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthenticationUsecaseFetchDetailUser {
  final AuthenticationRepository repository;

  AuthenticationUsecaseFetchDetailUser(this.repository);

  Future<Either<ServiceFailure, UserEntityData>> execute(String? uid) {
    return repository.fetchUserByUid(uid);
  }
}
