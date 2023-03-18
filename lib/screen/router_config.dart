import 'package:go_router/go_router.dart';
import 'package:riverpod_api_call_test/screen/detail/detail_page.dart';
import 'package:riverpod_api_call_test/screen/help/help_page.dart';
import 'package:riverpod_api_call_test/screen/home/home_page.dart';

/// GoRouter
class MyRouterConfig {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'detail',
            builder: (context, state) => const DetailPage(),
          ),
          GoRoute(
            path: 'help',
            builder: (context, state) => const HelpPage(),
          ),
        ],
      ),
    ],
  );
}
