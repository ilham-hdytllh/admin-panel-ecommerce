import 'package:admin_panel_ecommerce/common/widgets/components/templates/site_templates.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/responsive_screen/page_customer_detail_desktop.dart';
import 'package:admin_panel_ecommerce/features/customer/presentation/page/detail/responsive_screen/page_customer_detail_mobile.dart';
import 'package:flutter/material.dart';

class CustomerPageDetail extends StatelessWidget {
  const CustomerPageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteTemplates(
      desktop: PageCustomerDetailDesktop(),
      mobile: PageCustomerDetailMobile(),
    );
  }
}
