import 'package:admin_panel_ecommerce/common/widgets/breadcrumbs/breadcrumb_with_heading.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageMediaDesktop extends StatelessWidget {
  const PageMediaDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(DimenSizes.defaultSpace),
        child: Column(
          children: [
            // HEADER
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BreadcrumbWithHeading(
                    heading: "Media",
                    breadCumbItems: [],
                    returnToPreviousPage: false)
              ],
            )
          ],
        ),
      ),
    );
  }
}
