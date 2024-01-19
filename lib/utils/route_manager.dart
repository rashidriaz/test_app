import 'package:flutter/material.dart';
import 'package:test_app/models/models.dart';
import 'package:test_app/pages/pages.dart';

class RouteManager {
  static final Map<String, WidgetBuilder> _routeMap = {
    AppRoute.homePage.path: (_) => const HomePage(),
    AppRoute.providerPage.path: (_) => const ProviderCount(),
    AppRoute.statefulPage.path: (_) => const StatefulCounter(),
  };

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final builder = _routeMap[settings.name];
    debugPrint("routes manager");
    debugPrint(settings.name);
    if (builder != null) {
      return MaterialPageRoute(builder: builder, settings: settings);
    }
    // Fallback for undefined routes
    return MaterialPageRoute(builder: (_) => const PageNotFound());
  }
}
