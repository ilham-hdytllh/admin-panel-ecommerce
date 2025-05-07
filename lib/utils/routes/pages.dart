import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/controller/login/authentication_binding_login.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/authentication_page_forget_password.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/authentication_page_login.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/authentication_page_reset_password.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/controller/category_binding_main.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/create/category_page_create.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/edit/category_page_edit.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/main/category_page_main.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/controller/dashboard_binding_main.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/dashboard_page_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_binding_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/media_page_main.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/controller/product_binding_main.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/product_page_main.dart';
import 'package:admin_panel_ecommerce/utils/routes/middlewares/auth_middleware.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.login,
        binding: AuthenticationBindingLogin(),
        page: () => AuthenticationPageLogin()),
    GetPage(
        name: AppRoutes.forgetPassword,
        page: () => AuthenticationPageForgetPassword()),
    GetPage(
        name: AppRoutes.resetPassword,
        page: () => AuthenticationPageResetPassword()),
    GetPage(
        name: AppRoutes.dashboard,
        middlewares: [AuthMiddleware()],
        binding: DashboardBindingMain(),
        page: () => DashboardPageMain()),
    GetPage(
        name: AppRoutes.media,
        middlewares: [AuthMiddleware()],
        binding: MediaBindingMain(),
        page: () => MediaPageMain()),
    GetPage(
        name: AppRoutes.banners,
        middlewares: [AuthMiddleware()],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
    GetPage(
      name: AppRoutes.categories,
      middlewares: [AuthMiddleware()],
      binding: CategoryBindingMain(),
      page: () => CategoryPageMain(),
    ),
    GetPage(
        name: AppRoutes.createCategory,
        middlewares: [AuthMiddleware()],
        page: () => CategoryPageCreate()),
    GetPage(
        name: AppRoutes.editCategory,
        middlewares: [AuthMiddleware()],
        page: () => CategoryPageEdit()),
    // GetPage(
    //   name: AppRoutes.brands,
    //   middlewares: [AuthMiddleware()],
    //   binding: BrandBindingMain(),
    //   page: () => BrandPageMain(),
    // ),
    // GetPage(
    //     name: AppRoutes.createBrand,
    //     middlewares: [AuthMiddleware()],
    //     page: () => BrandPageCreate()),
    // GetPage(
    //     name: AppRoutes.editBrand,
    //     middlewares: [AuthMiddleware()],
    //     page: () => BrandPageEdit()),
    GetPage(
      name: AppRoutes.products,
      middlewares: [AuthMiddleware()],
      binding: ProductBindingMain(),
      page: () => ProductPageMain(),
    ),
    GetPage(
        name: AppRoutes.createProduct,
        middlewares: [AuthMiddleware()],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
    GetPage(
        name: AppRoutes.editProduct,
        middlewares: [AuthMiddleware()],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
  ];
}
