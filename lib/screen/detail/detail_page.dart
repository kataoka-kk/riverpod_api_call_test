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
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(GoRouter.of(context).location),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.push('/help');
              },
              child: const Text('push HelpPage'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
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
