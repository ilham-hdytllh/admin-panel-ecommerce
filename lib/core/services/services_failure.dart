import 'package:equatable/equatable.dart';

class ServiceFailure extends Equatable {
  final int? statusCode;
  final String message;
  final Object? error;

  const ServiceFailure(
    this.message, {
    this.statusCode,
    this.error,
  });

  @override
  List<Object?> get props => [message, statusCode];
}
