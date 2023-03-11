import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api_call_test/screen/router.dart';
import 'package:riverpod_api_call_test/screen/router_config.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// go_router使用コード
    // return MaterialApp.router(
    //   theme: ThemeData(
    //     colorSchemeSeed: Colors.indigo,
    //     useMaterial3: true,
    //   ),
    //   routerConfig: MyRouterConfig.router,
    //   debugShowCheckedModeBanner: false,
    // );

    /// Navigator使用コード
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      routes: MyRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
