import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/main/responsive_page/page_brand_desktop.dart';
import 'package:flutter/material.dart';

class BrandPageMain extends StatelessWidget {
  const BrandPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageBrandDesktop(),
    );
  }
}
