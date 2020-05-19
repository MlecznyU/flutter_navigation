import 'package:flutter/material.dart';
import 'package:navigation/App.dart';
import 'package:navigation/ui/home/navigation.dart';
import 'package:navigation/ui/shared_components/shared_components.dart';

class SecondScreen extends StatelessWidget {
  final String message;

  SecondScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
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
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            buildButton(
              'home screen',
              () {
                Application.navigator.currentState.push(
                  HomeRoute.get('Navigated from second screen'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
