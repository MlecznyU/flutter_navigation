import 'package:flutter/material.dart';
import 'package:navigation/ui/shared_components/shared_components.dart';

import '../../../App.dart';


class ThirdScreen extends StatelessWidget {
  final String message;

  ThirdScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third screen')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'This is your Second screen',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 24),
            Text(
              message == '' ? 'no message' : message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            buildButton('back', () => Application.navigator.currentState.pop())
          ],
        ),
      ),
    );
  }
}
