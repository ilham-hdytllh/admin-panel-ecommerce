import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/create/responsive_page/page_brand_create_desktop.dart';
import 'package:flutter/material.dart';

class BrandPageCreate extends StatelessWidget {
  const BrandPageCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageBrandCreateDesktop(),
    );
  }
}
