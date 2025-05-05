import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/authentication/data/model/authentication_request_signin.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/repository/authentication_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthenticationUsecaseSignin {
  final AuthenticationRepository repository;

  AuthenticationUsecaseSignin(this.repository);

  Future<Either<ServiceFailure, String>> execute(
      AuthenticationRequestSignin? request) {
    return repository.signIn(request);
  }
}
