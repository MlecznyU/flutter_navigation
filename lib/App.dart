import 'package:flutter/material.dart';

import 'ui/screens/home/screen.dart';

class Application extends StatelessWidget {
  static final navigator = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      navigatorKey: Application.navigator,
    );
  }
}
