import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api_call_test/providers.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(runtimeType.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'counter x1 ${ref.watch(x1Provider)}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'counter x2 ${ref.watch(x2Provider)}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'counter x3 ${ref.watch(x3Provider)}',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint(
                    'init onPressed ${ref.read(x1Provider.notifier).state}');
                ref.read(counterProvider.notifier).init();
              },
              child: const Text('init'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
