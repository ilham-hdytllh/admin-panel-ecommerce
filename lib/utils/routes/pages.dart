import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/authentication_page_forget_password.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/authentication_page_login.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/authentication_page_reset_password.dart';
import 'package:admin_panel_ecommerce/utils/routes/middlewares/auth_middleware.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.login, page: () => AuthenticationPageLogin()),
    GetPage(
        name: AppRoutes.forgetPassword,
        page: () => AuthenticationPageForgetPassword()),
    GetPage(
        name: AppRoutes.resetPassword,
        page: () => AuthenticationPageResetPassword()),
    GetPage(
        name: AppRoutes.dashboard,
        middlewares: [],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
    GetPage(
        name: AppRoutes.media,
        middlewares: [AuthMiddleware()],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
    GetPage(
        name: AppRoutes.banners,
        middlewares: [AuthMiddleware()],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
  ];
}
