import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/category/presentation/page/edit/responsive_page/page_category_edit_desktop.dart';
import 'package:flutter/material.dart';

class CategoryPageEdit extends StatelessWidget {
  const CategoryPageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageCategoryEditDesktop(),
    );
  }
}
