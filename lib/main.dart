import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/pages/pages.dart';
import 'models/models.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Counter(),
        ),
        ChangeNotifierProvider(
          create: (context) => DeepLinks(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
