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
          mainAxisSize: MainAxisSize.min,
          children: [
            // Text(GoRouter.of(context).location),
            const SizedBox(height: 20),

            /// go_router使用コード
            // ElevatedButton(
            //   onPressed: () {
            //     context.push('/detail');
            //   },
            //   child: const Text('push DetailPage'),
            // ),
            /// Navigator使用コード
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail');
              },
              child: const Text('push DetailPage'),
            ),
            const SizedBox(height: 20),

            /// go_router使用コード
            // ElevatedButton(
            //   onPressed: () {
            //     context.go('/detail');
            //   },
            //   child: const Text('go DetailPage'),
            // ),
            /// Navigator使用コード
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/detail');
              },
              child: const Text('pushReplacementNamed DetailPage'),
            ),
            const SizedBox(height: 20),

            /// Navigator使用コード
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/counter');
              },
              child: const Text('pushNamed CounterPage'),
            ),
          ],
        ),
      ),
    );
  }
}
