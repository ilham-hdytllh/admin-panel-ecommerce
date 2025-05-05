import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard(
      {super.key,
      required this.context,
      required this.title,
      required this.subtitle,
      this.icon = Iconsax.arrow_up3,
      this.color = CustomColors.success,
      required this.stats,
      this.onTap});

  final BuildContext context;
  final String title, subtitle;
  final IconData icon;
  final Color color;
  final int stats;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      onTap: onTap,
      padding: EdgeInsets.all(DimenSizes.lg),
      child: Column(
        children: [
          // HEADING
          CustomSectionHeading(
              title: title, textColor: CustomColors.textSecondary),
          SizedBox(height: DimenSizes.spaceBtwSections),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(subtitle, style: Theme.of(context).textTheme.headlineMedium),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: color, size: DimenSizes.iconSm),
                      Text("$stats%",
                          style: Theme.of(context).textTheme.titleLarge?.apply(
                              color: color, overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                  Text("Compared to Dec 2025",
                      style: Theme.of(context).textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
