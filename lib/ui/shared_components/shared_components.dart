import 'package:flutter/material.dart';

Widget buildButton(
    final String text,
    final Function onPress,
    ) {
  return Center(
    child: Container(
      width: 150,
      child: RaisedButton(
        onPressed: onPress,
        child: Text(text),
      ),
    ),
  );
}
