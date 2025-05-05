import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/repository/authentication_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthenticationUsecaseSingOut {
  final AuthenticationRepository repository;

  AuthenticationUsecaseSingOut(this.repository);

  Future<Either<ServiceFailure, String>> execute() {
    return repository.signOut();
  }
}
