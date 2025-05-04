import 'package:admin_panel_ecommerce/common/widgets/components/headers/header.dart';
import 'package:admin_panel_ecommerce/common/widgets/components/sidebars/sidebar.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Sidebar(),
          ),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  // HEADER
                  Header(),

                  // BODY
                  body ?? SizedBox(),
                ],
              ))
        ],
      ),
    );
  }
}
