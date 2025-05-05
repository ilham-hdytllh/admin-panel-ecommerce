import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PageMediaMobile extends StatelessWidget {
  const PageMediaMobile({super.key});

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
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
