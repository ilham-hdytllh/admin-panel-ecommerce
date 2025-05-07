import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/main/responsive_page/page_category_desktop.dart';
import 'package:flutter/material.dart';

class CategoryPageMain extends StatelessWidget {
  const CategoryPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageCategoryDesktop(),
    );
  }
}
