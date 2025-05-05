import 'package:admin_panel_ecommerce/features/authentication/domain/entity/role_entity_data.dart';
import 'package:equatable/equatable.dart';

class UserEntityData extends Equatable {
  final String? uid;
  final String? email;
  final String? name;
  final String? photoUrl;
  final RoleEntityData? role;

  const UserEntityData(
      {this.uid, this.email, this.name, this.photoUrl, this.role});

  @override
  List<Object?> get props => [uid];
}
