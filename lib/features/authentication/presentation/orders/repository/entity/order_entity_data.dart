import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class OrderEntityData extends Equatable {
  final String? id;
  final OrderStatus status;
  final double? totalAmount;
  final DateTime orderDate;
  DateTime? deliveryDate;

  OrderEntityData(
      {this.id,
      required this.status,
      this.totalAmount,
      required this.orderDate,
      this.deliveryDate});

  @override
  List<Object?> get props => [id];
}
