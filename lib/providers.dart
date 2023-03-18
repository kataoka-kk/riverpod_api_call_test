import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final x1Provider = StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    debugPrint('x1Provider dispose');
  });

  return ref.watch(counterProvider);
});

final x2Provider = StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    debugPrint('x2Provider dispose');
  });

  return ref.watch(counterProvider) * 2;
});

final x3Provider = StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    debugPrint('x3Provider dispose');
  });

  return ref.watch(counterProvider) * 3;
});

final counterProvider =
    StateNotifierProvider.autoDispose<CounterNotifier, int>((ref) {
  ref.onDispose(() {
    debugPrint('counterProvider dispose');
  });

  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void init() {
    state = 0;
  }

  void add() {
    state += 1;
  }
}
