import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Stateful widget implementation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: const Text("Stateful widget counter"),
              onPressed: () => Navigator.pushNamed(context, "/stateful-widget"),
            ),
            ElevatedButton(
              child: const Text("provider pattern counter"),
              onPressed: () => Navigator.pushNamed(context, "/stateful-widget"),
            ),
          ],
        ),
      ),
    );
  }
}
