import 'package:flutter/material.dart';
import 'package:navigation/ui/second_screen/screen.dart';

class SecondRoute {
  static Route get(final String message) {
    return MaterialPageRoute(
      builder: (BuildContext context) => SecondScreen(message),
    );
  }
}
