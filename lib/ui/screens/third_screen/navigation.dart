import 'package:flutter/material.dart';

import 'screen.dart';

class ThirdRoute {
  static Route get(final String message) {
    return MaterialPageRoute(
      builder: (BuildContext context) => ThirdScreen(message),
    );
  }
}
