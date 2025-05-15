import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/create/responsive_page/page_product_create_desktop.dart';
import 'package:flutter/material.dart';

class ProductPageCreate extends StatelessWidget {
  const ProductPageCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageProductCreateDesktop(),
    );
  }
}
