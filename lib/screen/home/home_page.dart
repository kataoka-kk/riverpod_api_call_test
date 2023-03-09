import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(runtimeType.toString()),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.push('/detail');
              },
              child: const Text('push DetailPage'),
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                context.go('/detail');
              },
              child: const Text('go DetailPage'),
            ),
          ],
        ),
      ),
    );
  }
}
