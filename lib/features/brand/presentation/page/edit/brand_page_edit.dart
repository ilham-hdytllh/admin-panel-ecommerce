import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/brand/presentation/page/edit/responsive_page/page_brand_edit_desktop.dart';
import 'package:flutter/material.dart';

class BrandPageEdit extends StatelessWidget {
  const BrandPageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageBrandEditDesktop(),
    );
  }
}
