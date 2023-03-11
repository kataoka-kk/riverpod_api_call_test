import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

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
            /// go_router使用コード
            // Text(GoRouter.of(context).location),
            /// Navigator使用コード
            Text(Navigator.of(context).toString()),
            Text(Navigator.of(context).runtimeType.toString()),
          ],
        ),
      ),
    );
  }
}
