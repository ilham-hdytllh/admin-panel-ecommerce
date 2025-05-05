import 'package:admin_panel_ecommerce/common/localization/localization.dart';
import 'package:admin_panel_ecommerce/core/configuration/binding/initial_binding.dart';
// import 'package:admin_panel_ecommerce/utils/routes/observers/route_observer.dart';
import 'package:admin_panel_ecommerce/utils/routes/pages.dart';
import 'package:admin_panel_ecommerce/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'utils/constants/colors.dart';
import 'utils/device/web_material_scroll.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Admin Panel",
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.supportedLocale,
      locale: Localization.defaultLocale,
      translations: Localization(),
      defaultTransition: Transition.noTransition,
      scrollBehavior: MyCustomScrollBehavior(),
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.dashboard,
      getPages: AppPages.pages,
      // navigatorObservers: [CustomRouteObserver()],
      unknownRoute: GetPage(
          name: "/page-not-found",
          page: () => Scaffold(
                body: Center(
                  child: Text("Page Not Found"),
                ),
              )),
      home: Scaffold(
        backgroundColor: CustomColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      ),
    );
  }
}
