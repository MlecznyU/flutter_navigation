import 'package:flutter/material.dart';

import 'screen.dart';

class HomeRoute {
  static Route get(final String message) {
    return MaterialPageRoute(
      builder: (BuildContext context) => Home(message: message),
    );
  }
}
