import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/create/responsive_page/page_category_create_desktop.dart';
import 'package:flutter/material.dart';

class CategoryPageCreate extends StatelessWidget {
  const CategoryPageCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageCategoryCreateDesktop(),
    );
  }
}
