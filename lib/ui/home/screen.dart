import 'package:flutter/material.dart';
import 'package:navigation/App.dart';
import 'package:navigation/ui/second_screen/navigation.dart';
import 'package:navigation/ui/shared_components/shared_components.dart';
import 'package:navigation/ui/third_screen/navigation.dart';

class Home extends StatelessWidget {
  final String message;

  Home({this.message});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Home screen')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is your first screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            Text(
              message == null ? '' : message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            buildButton(
              'second screen',
              () {
                Application.navigator.currentState.push(
                  SecondRoute.get('Message from first screen'),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: TextField(
                controller: _controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Message for third screen',
                ),
              ),
            ),
            buildButton('third screen', () {
              Application.navigator.currentState.push(
                ThirdRoute.get(_controller.text),
              );
            }),
          ],
        ),
      ),
    );
  }
}
