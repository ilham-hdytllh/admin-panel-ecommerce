import 'package:admin_panel_ecommerce/common/widgets/texts/page_heading.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BreadcrumbWithHeading extends StatelessWidget {
  const BreadcrumbWithHeading(
      {super.key,
      required this.heading,
      required this.breadCumbItems,
      required this.returnToPreviousPage});

  final String heading;
  final List<String> breadCumbItems;
  final bool returnToPreviousPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => Get.offAllNamed(AppRoutes.dashboard),
              child: Padding(
                padding: EdgeInsets.all(DimenSizes.xs),
                child: Text('Dashboard',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .apply(fontWeightDelta: -1)),
              ),
            ),
            for (int i = 0; i < breadCumbItems.length; i++)
              Row(
                children: [
                  Text('/'),
                  InkWell(
                    onTap: i == breadCumbItems.length - 1
                        ? null
                        : () => Get.toNamed(breadCumbItems[i]),
                    child: Padding(
                      padding: EdgeInsets.all(DimenSizes.xs),
                      child: Text(
                          i == breadCumbItems.length - 1
                              ? breadCumbItems[i].capitalize.toString()
                              : capitalize(breadCumbItems[i].substring(1)),
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(fontWeightDelta: -1)),
                    ),
                  ),
                ],
              ),
          ],
        ),
        SizedBox(height: DimenSizes.sm),
        Row(
          children: [
            if (returnToPreviousPage) ...{
              IconButton(
                  onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left)),
              SizedBox(width: DimenSizes.spaceBtwItems)
            },
            CustomPageHeading(heading: heading),
          ],
        )
      ],
    );
  }

  String capitalize(String s) {
    return s.isEmpty ? "" : s[0].toUpperCase() + s.substring(1);
  }
}
