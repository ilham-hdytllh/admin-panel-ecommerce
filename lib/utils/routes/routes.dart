class AppRoutes {
  static const login = "/login";
  static const forgetPassword = "/forget-password";
  static const resetPassword = "/reset-password";
  static const dashboard = "/dashboard";
  static const media = "/media";

  static const banners = "/banners";
  static const createBanner = "$banners/create-banner";
  static const editBanner = "$banners/edit-banner";

  static const products = "/products";
  static const createProduct = "$products/create-product";
  static const editProduct = "$products/edit-product";

  static const categories = "/categories";
  static const createCategory = "$categories/create-category";
  static const editCategory = "$categories/edit-category";

  static const brands = "/brands";
  static const createBrand = "$brands/create-brand";
  static const editBrand = "$brands/edit-brand";

  static const customers = "/customers";
  static const detailCustomer = "$customers/detail-customer";

  static const orders = "/orders";
  static const detailOrder = "$orders/detail-order";

  static const profile = "/profile";
  static const setting = "/setting";

  static const logout = "/logout";

  static List sidebarMenuItems = [
    dashboard,
    media,
    banners,
    products,
    categories,
    brands,
    customers,
    orders,
    profile,
    setting
  ];
}
