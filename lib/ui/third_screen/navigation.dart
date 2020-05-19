import 'package:flutter/material.dart';
import 'package:navigation/ui/third_screen/screen.dart';

class ThirdRoute {
  static Route get(final String message) {
    return MaterialPageRoute(
      builder: (BuildContext context) => ThirdScreen(message),
    );
  }
}
