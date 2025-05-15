// import 'package:admin_panel_ecommerce/features/product/presentation/controller/product_controller_main.dart';
import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/create/widgets/product_attributes.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/create/widgets/product_stock_and_pricing.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/create/widgets/product_title_and_description.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/create/widgets/product_type_widget.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class PageProductCreateDesktop extends StatelessWidget {
  const PageProductCreateDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    // final productController = Get.find<ProductControllerMain>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(DimenSizes.defaultSpace),
          child: Column(
            children: [
              // HEADER
              BreadcrumbWithHeading(
                  heading: "Create Product",
                  breadCumbItems: [AppRoutes.products, "Create Product"],
                  returnToPreviousPage: true),
              SizedBox(height: DimenSizes.spaceBtwSections),

              // CREATE PRODUCT
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: CustomDeviceUtils.isTabletScreen(context) ? 2 : 3,
                    child: Column(
                      children: [
                        // BASIC INFORMATION
                        ProductTitleAndDescription(),
                        SizedBox(height: DimenSizes.spaceBtwSections),

                        // STOCK PRICING
                        CustomRoundedContainer(
                          child: Column(
                            children: [
                              // HEADING
                              Text("Stock & Pricing",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                              SizedBox(height: DimenSizes.spaceBtwItems),

                              // PRODCUT TYPE
                              ProductTypeWidget(),
                              SizedBox(height: DimenSizes.spaceBtwInputFields),

                              // STOCK
                              ProductStockAndPricing(),
                              SizedBox(height: DimenSizes.spaceBtwSections),

                              // ATTRIBUTES
                              ProductAttributes(),
                              SizedBox(height: DimenSizes.spaceBtwSections),
                            ],
                          ),
                        ),
                        SizedBox(height: DimenSizes.spaceBtwSections),

                        // VARIATIONS
                        // ProductVariations(),
                      ],
                    ),
                  ),
                  SizedBox(height: DimenSizes.defaultSpace),
                  Expanded(
                    child: Column(
                      children: [
                        // THUMBNAIL
                        // ProductThumnailImage(),
                        SizedBox(height: DimenSizes.spaceBtwSections),

                        // PRODUCT IMAGES
                        CustomRoundedContainer(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("All Product Images",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                              SizedBox(height: DimenSizes.spaceBtwItems),
                              // ProductAdditionalImages(
                              //     additionalProductImagesUrls:
                              //         RxList<String>.empty(),
                              //     onTapToAddImage: () {},
                              //     onTapToRemoveImage: (index) {}),
                              SizedBox(height: DimenSizes.spaceBtwSections),

                              // Product Brand
                              // ProductBrand(),
                              SizedBox(height: DimenSizes.spaceBtwSections),

                              // Product Categories
                              // ProductCategories(),
                              SizedBox(height: DimenSizes.spaceBtwSections),

                              // Product Visibility
                              // ProductVisibilityWidget(),
                              SizedBox(height: DimenSizes.spaceBtwSections),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
