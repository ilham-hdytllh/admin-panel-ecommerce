class AppRoutes {
  static const login = "/login";
  static const forgetPassword = "/forget-password";
  static const resetPassword = "/reset-password";
  static const dashboard = "/dashboard";
  static const media = "/media";

  static const banners = "/banners";
  static const createBanner = "/createBanner";
  static const editBanner = "/editBanner";

  static const products = "/products";
  static const createProduct = "/create-product";
  static const editProduct = "/edit-product";

  static const categories = "/categories";
  static const createCategory = "/createCategory";
  static const editCategory = "/editCategory";

  static const brands = "/brands";
  static const createBrand = "/createBrand";
  static const editBrand = "/editBrand";

  static const customers = "/customers";
  static const createCustomer = "/createCustomer";
  static const editCustomer = "/editCustomer";

  static const users = "/users";
  static const createUser = "/createUser";
  static const editUser = "/editUser";

  static const settings = "/settings";

  static const logout = "/logout";

  static List sidebarMenuItems = [
    dashboard,
    media,
    banners,
    products,
    categories,
    brands,
    customers,
    users,
    settings
  ];
}
