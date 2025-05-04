import 'package:admin_panel_ecommerce/common/widgets/components/headers/header.dart';
import 'package:admin_panel_ecommerce/common/widgets/components/sidebars/sidebar.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key, this.body});

  final Widget? body;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Sidebar(),
      appBar: Header(
        scaffoldKey: scaffoldKey,
      ),
      body: body ?? SizedBox(),
    );
  }
}
