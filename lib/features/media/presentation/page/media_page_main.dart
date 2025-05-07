import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/media/presentation/page/responsive_page/page_media.dart';
import 'package:flutter/material.dart';

class MediaPageMain extends StatelessWidget {
  const MediaPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageMedia(),
    );
  }
}
