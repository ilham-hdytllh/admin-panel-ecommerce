import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/banner/presentation/page/main/responsive_page/page_banner_desktop.dart';
import 'package:flutter/material.dart';

class BannerPageMain extends StatelessWidget {
  const BannerPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageBannerDesktop(),
    );
  }
}
