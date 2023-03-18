import 'package:flutter/material.dart';
import 'package:riverpod_api_call_test/screen/counter/counter_page.dart';
import 'package:riverpod_api_call_test/screen/detail/detail_page.dart';
import 'package:riverpod_api_call_test/screen/help/help_page.dart';
import 'package:riverpod_api_call_test/screen/home/home_page.dart';

class MyRouter {
  static Map<String, WidgetBuilder> router = {
    '/': (context) => const HomePage(),
    '/detail': (context) => const DetailPage(),
    '/help': (context) => const HelpPage(),
    '/counter': (context) => const CounterPage(),
  };
}
