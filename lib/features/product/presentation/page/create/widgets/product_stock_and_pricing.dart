import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductStockAndPricing extends StatelessWidget {
  const ProductStockAndPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // STOCK
          FractionallySizedBox(
            widthFactor: 0.45,
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Stock",
                  hintText: "Add Stock, only numbers are allowed"),
              validator: (value) =>
                  CustomValidator.validateEmptyText("Stock", value),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(height: DimenSizes.spaceBtwInputFields),

          // PRICING
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Price",
                    hintText: "Price with up to 2 decimals"),
                validator: (value) =>
                    CustomValidator.validateEmptyText("Price", value),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[],
              )),
              SizedBox(width: DimenSizes.spaceBtwItems),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Discounted Price",
                    hintText: "Price with up to 2 decimals"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
