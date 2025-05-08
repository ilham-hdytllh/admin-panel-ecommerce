import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/main/responsive_screen/customer_order_desktop.dart';
import 'package:flutter/material.dart';

class CustomerPageMain extends StatelessWidget {
  const CustomerPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageCustomerDesktop(),
    );
  }
}
