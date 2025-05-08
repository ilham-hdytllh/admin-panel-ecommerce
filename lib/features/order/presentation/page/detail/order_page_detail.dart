import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/responsive_screen/page_order_detail_desktop.dart';
import 'package:admin_panel_ecommerce/features/order/presentation/page/detail/responsive_screen/page_order_detail_mobile.dart';
import 'package:flutter/material.dart';

class OrderPageDetail extends StatelessWidget {
  const OrderPageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageOrderDetailDesktop(),
      mobile: PageOrderDetailMobile(),
    );
  }
}
