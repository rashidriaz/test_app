import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/pages/pages.dart';
import 'models/models.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> Counter(),
    child: const MyApp(),
  ));
}




