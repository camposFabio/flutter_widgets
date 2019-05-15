import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Center(
          child: RaisedButton(
        child: Text(
          'Go to second screen',
          style: TextStyle(fontSize: 24),
        ),
        onPressed: () {
          _navigateToSecondScreen(context);
        },
      )),
    );
  }

  void _navigateToSecondScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(
                text: 'Hello',
              ),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  final String text;
  SecondScreen({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
        child: RaisedButton(
          child: Text(
            text,
            style: TextStyle(fontSize: 24),
          ),
          onPressed: () {
            _goBackToFirstScreen(context);
          },
        ),
      ),
    );
  }

  void _goBackToFirstScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
