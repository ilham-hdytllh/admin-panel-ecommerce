import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/responsive_page/page_media_desktop.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/responsive_page/page_media_mobile.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/responsive_page/page_media_tablet.dart';
import 'package:flutter/material.dart';

class MediaPageMain extends StatelessWidget {
  const MediaPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageMediaDesktop(),
      tablet: PageMediaTablet(),
      mobile: PageMediaMobile(),
    );
  }
}
