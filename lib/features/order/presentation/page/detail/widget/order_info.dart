import 'package:admin_panel_ecommerce/common/widgets/containers/rounded_container.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      padding: EdgeInsets.all(DimenSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Order Information",
              style: TextTheme.of(context).headlineMedium),
          SizedBox(height: DimenSizes.spaceBtwSections),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Date"),
                  Text("22 June 2025", style: TextTheme.of(context).bodyLarge),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Items"),
                  Text("5 Items", style: TextTheme.of(context).bodyLarge),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Status"),
                  CustomRoundedContainer(
                    radius: DimenSizes.cardRadiusSm,
                    padding: EdgeInsets.symmetric(
                        horizontal: DimenSizes.sm, vertical: 0),
                    backgroundColor:
                        HelperFunctions.getOrderStatusColor(OrderStatus.pending)
                            .withValues(alpha: 0.1),
                    child: DropdownButton<OrderStatus>(
                        elevation: 0,
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                        icon: Icon(Iconsax.arrow_square_down,
                            color: HelperFunctions.getOrderStatusColor(
                                OrderStatus.pending)),
                        underline: Container(),
                        value: OrderStatus.pending,
                        items: OrderStatus.values
                            .map((e) => DropdownMenuItem<OrderStatus>(
                                value: e,
                                child: Text(
                                  e.name.capitalize.toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      color:
                                          HelperFunctions.getOrderStatusColor(
                                              OrderStatus.pending)),
                                )))
                            .toList(),
                        onChanged: (v) {}),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total"),
                  Text("\$250", style: TextTheme.of(context).bodyLarge),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
