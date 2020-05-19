import 'package:flutter/material.dart';
import 'package:navigation/ui/home/screen.dart';

class HomeRoute {
  static Route get(final String message) {
    return MaterialPageRoute(
      builder: (BuildContext context) => Home(message: message),
    );
  }
}
