import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/utils/utils.dart';

import '../models/models.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State management test app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      onGenerateRoute:(settings) {
        final deepLinksProvider = Provider.of<DeepLinks>(context, listen: true);
        Route<dynamic>? deepLinkRoute = deepLinksProvider.handleDeepLinkNavigation(context);
        debugPrint("HERE");
        return deepLinkRoute ?? RouteManager.generateRoute(settings);
      },
    );
  }
}
