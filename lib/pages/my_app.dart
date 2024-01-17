import 'package:flutter/material.dart';
import 'package:test_app/pages/provider_count.dart';
import 'pages.dart';

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
      routes: {
        "/": (context)=>const HomePage(),
        "/stateful-widget": (context)=> const StatefulCounter(),
        "/provider-widget": (context)=> const ProviderCount(),
      },
    );
  }
}
