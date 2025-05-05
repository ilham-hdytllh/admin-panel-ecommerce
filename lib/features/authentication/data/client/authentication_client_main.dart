import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/authentication/data/model/authentication_request_signin.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/entity/role_entity_data.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/entity/user_entity_data.dart';
import 'package:admin_panel_ecommerce/features/authentication/domain/repository/authentication_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationClientMain implements AuthenticationRepository {
  @override
  Future<Either<ServiceFailure, String>> signIn(
      AuthenticationRequestSignin? request) async {
    try {
      await Supabase.instance.client.auth.signInWithPassword(
        email: request?.email ?? "",
        password: request?.password ?? "",
      );

      return Right("Success login..");
    } on AuthException catch (e) {
      return Left(ServiceFailure(e.message));
    } catch (e) {
      return Left(ServiceFailure("Unexpected error", error: e));
    }
  }

  @override
  Future<Either<ServiceFailure, String>> signOut() async {
    try {
      Supabase.instance.client.auth.signOut();

      return Right("Success Logout..");
    } on AuthException catch (e) {
      return Left(ServiceFailure(e.message));
    } catch (e) {
      return Left(ServiceFailure("Unexpected error", error: e));
    }
  }

  @override
  Future<Either<ServiceFailure, UserEntityData>> fetchUserByUid(
      String? uid) async {
    try {
      final response = await Supabase.instance.client
          .from('users')
          .select('id, email, photo ,username, roles (id, name)')
          .eq('id', uid ?? "")
          .single();

      final userData = UserEntityData(
        uid: uid,
        email: response['email'] ?? "",
        name: response['username'] ?? "",
        photoUrl: response['photo'] ?? "",
        role: RoleEntityData(
          id: response['roles']?['id'],
          name: response['roles']?['name'],
        ),
      );

      return Right(userData);
    } on PostgrestException catch (e) {
      return Left(ServiceFailure("Database error: ${e.message}"));
    } catch (e) {
      return Left(ServiceFailure("Unexpected error", error: e));
    }
  }
}
