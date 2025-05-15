import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/product/presentation/page/main/responsive_page/page_product_desktop.dart';
import 'package:flutter/material.dart';

class ProductPageMain extends StatelessWidget {
  const ProductPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageProductDesktop(),
    );
  }
}
