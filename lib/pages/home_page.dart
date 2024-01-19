import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/models/models.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('State management test app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<DeepLinks>(
                builder: (context, deepLink, child) => Text(
                    "${deepLink.link?.path}")),
            TextButton(
              child: const Text("Stateful widget counter"),
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoute.statefulPage.path),
            ),
            ElevatedButton(
              child: const Text("provider pattern counter"),
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoute.providerPage.path),
            ),
          ],
        ),
      ),
    );
  }
}
