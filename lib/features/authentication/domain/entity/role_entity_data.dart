import 'package:equatable/equatable.dart';

class RoleEntityData extends Equatable {
  final int? id;
  final String? name;

  const RoleEntityData({this.id, this.name});

  @override
  List<Object?> get props => [id, name];
}
