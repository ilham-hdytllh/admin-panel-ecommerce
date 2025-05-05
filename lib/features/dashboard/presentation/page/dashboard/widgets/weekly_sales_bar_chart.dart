import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/features/dashboard/presentation/controller/dashboard_controller_main.dart';
import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/device/device_utility.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeeklySalesBarChart extends StatelessWidget {
  const WeeklySalesBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardControllerMain>();
    return CustomRoundedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Weekly Sales",
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: DimenSizes.spaceBtwSections),
          SizedBox(
            height: 400,
            child: BarChart(
              BarChartData(
                  titlesData: _buildFlTitlesData(),
                  borderData: FlBorderData(
                      show: true,
                      border:
                          Border(top: BorderSide.none, right: BorderSide.none)),
                  gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      drawVerticalLine: false,
                      horizontalInterval: 200),
                  groupsSpace: DimenSizes.spaceBtwItems,
                  barTouchData: BarTouchData(
                      touchCallback: CustomDeviceUtils.isDesktopScreen(context)
                          ? (barTouchEvent, barTouchResponse) {}
                          : null,
                      touchTooltipData: BarTouchTooltipData(
                        getTooltipColor: (group) => CustomColors.secondary,
                      )),
                  barGroups: controller.weeklySales
                      .asMap()
                      .entries
                      .map((entry) => BarChartGroupData(x: entry.key, barRods: [
                            BarChartRodData(
                                toY: entry.value,
                                width: 30,
                                color: CustomColors.primary,
                                borderRadius: BorderRadius.circular(
                                    DimenSizes.borderRadiusSm))
                          ]))
                      .toList()),
            ),
          ),
        ],
      ),
    );
  }
}

FlTitlesData _buildFlTitlesData() {
  return FlTitlesData(
      show: true,
      leftTitles: AxisTitles(
          sideTitles:
              SideTitles(showTitles: true, interval: 200, reservedSize: 50)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

              final index = value.toInt() % days.length;

              final day = days[index];

              return SideTitleWidget(meta: meta, space: 0, child: Text(day));
            }),
      ));
}
