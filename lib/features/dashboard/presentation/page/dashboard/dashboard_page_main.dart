import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/responsive_page/page_dashboard_desktop.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/responsive_page/page_dashboard_mobile.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/page/dashboard/responsive_page/page_dashboard_tablet.dart';
import 'package:flutter/widgets.dart';

class DashboardPageMain extends StatelessWidget {
  const DashboardPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageDashboardDesktop(),
      tablet: PageDashboardTablet(),
      mobile: PageDashboardMobile(),
    );
  }
}
