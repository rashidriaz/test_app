import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page not found'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Error code: 404',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text(
              "Page not found"
            )
          ],
        ),
      ),
    ));
  }
}
