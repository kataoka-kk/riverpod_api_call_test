import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                context.push('/help');
              },
              child: const Text('push HelpPage'),
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                context.go('/help');
              },
              child: const Text('go HelpPage'),
            ),
          ],
        ),
      ),
    );
  }
}
