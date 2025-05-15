import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/controller/login/authentication_binding_login.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/forget_password/authentication_page_forget_password.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/login/authentication_page_login.dart';
import 'package:admin_panel_ecommerce/features/authentication/presentation/page/reset_password/authentication_page_reset_password.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/controller/banner_binding_main.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/page/create/banner_page_create.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/page/edit/banner_page_edit.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/page/main/banner_page_main.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/controller/brand_binding_main.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/create/brand_page_create.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/edit/brand_page_edit.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/main/brand_page_main.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/controller/category_binding_main.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/create/category_page_create.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/edit/category_page_edit.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/main/category_page_main.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/controller/customer_binding_main.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/customer_page_detail.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/main/customer_page_main.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/controller/dashboard_binding_main.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/dashboard_page_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/controller/media_binding_main.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/media_page_main.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/controller/order_binding_main.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/order_page_detail.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/main/order_page_main.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/controller/product_binding_main.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/create/product_page_create.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/main/product_page_main.dart';
import 'package:admin_panel_ecommerce/features/profile/presentation/controller/profile_binding_main.dart';
import 'package:admin_panel_ecommerce/features/profile/presentation/page/profile_page_main.dart';
import 'package:admin_panel_ecommerce/features/setting/presentation/controller/setting_binding_main.dart';
import 'package:admin_panel_ecommerce/features/setting/presentation/page/profile_page_main.dart';
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
      binding: BannerBindingMain(),
      page: () => BannerPageMain(),
    ),
    GetPage(
        name: AppRoutes.createBanner,
        middlewares: [AuthMiddleware()],
        page: () => BannerPageCreate()),
    GetPage(
        name: AppRoutes.editBanner,
        middlewares: [AuthMiddleware()],
        page: () => BannerPageEdit()),
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
    GetPage(
      name: AppRoutes.brands,
      middlewares: [AuthMiddleware()],
      binding: BrandBindingMain(),
      page: () => BrandPageMain(),
    ),
    GetPage(
        name: AppRoutes.createBrand,
        middlewares: [AuthMiddleware()],
        page: () => BrandPageCreate()),
    GetPage(
        name: AppRoutes.editBrand,
        middlewares: [AuthMiddleware()],
        page: () => BrandPageEdit()),
    GetPage(
      name: AppRoutes.products,
      middlewares: [AuthMiddleware()],
      binding: ProductBindingMain(),
      page: () => ProductPageMain(),
    ),
    GetPage(
        name: AppRoutes.createProduct,
        middlewares: [AuthMiddleware()],
        page: () => ProductPageCreate()),
    GetPage(
        name: AppRoutes.editProduct,
        middlewares: [AuthMiddleware()],
        page: () => SiteTemplates(
              desktop: SizedBox(),
              tablet: SizedBox(),
              mobile: SizedBox(),
            )),
    GetPage(
      name: AppRoutes.customers,
      middlewares: [AuthMiddleware()],
      binding: CustomerBindingMain(),
      page: () => CustomerPageMain(),
    ),
    GetPage(
        name: AppRoutes.detailCustomer,
        middlewares: [AuthMiddleware()],
        page: () => CustomerPageDetail()),
    GetPage(
        name: AppRoutes.orders,
        middlewares: [AuthMiddleware()],
        binding: OrderBindingMain(),
        page: () => OrderPageMain()),
    GetPage(
        name: AppRoutes.detailOrder,
        middlewares: [AuthMiddleware()],
        page: () => OrderPageDetail()),
    GetPage(
        name: AppRoutes.profile,
        middlewares: [AuthMiddleware()],
        binding: ProfileBindingMain(),
        page: () => ProfilePageMain()),
    GetPage(
        name: AppRoutes.setting,
        middlewares: [AuthMiddleware()],
        binding: SettingBindingMain(),
        page: () => SettingPageMain()),
  ];
}
