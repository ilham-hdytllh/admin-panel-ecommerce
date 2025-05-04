import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final isAuthenticated = false;
    if (!isAuthenticated) {
      RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
