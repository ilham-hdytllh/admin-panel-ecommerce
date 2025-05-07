import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/page/create/responsive_page/page_banner_create_desktop.dart';
import 'package:flutter/material.dart';

class BannerPageCreate extends StatelessWidget {
  const BannerPageCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageBannerCreateDesktop(),
    );
  }
}
