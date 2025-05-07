import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/page/edit/responsive_page/page_banner_edit_desktop.dart';
import 'package:flutter/material.dart';

class BannerPageEdit extends StatelessWidget {
  const BannerPageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageBannerEditDesktop(),
    );
  }
}
