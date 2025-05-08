import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/main/responsive_screen/page_order_desktop.dart';
import 'package:flutter/material.dart';

class OrderPageMain extends StatelessWidget {
  const OrderPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageOrderDesktop(),
    );
  }
}
