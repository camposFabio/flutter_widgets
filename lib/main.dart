import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatefulWidget {
  @override
  _MyLayoutState createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Text(
              'Hello world',
              style: TextStyle(
                fontSize: 20,
                color: _color,
              ),
            ),
            onTap: () {
              _mudaCor();
            },
          ),
          RaisedButton(
            child: Text('Show alert'),
            onPressed: () {
              _showAlertDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void _mudaCor() {
    setState(() {
      // have to import 'dart:math' in order to use Random()
      int randomHexColor = Random().nextInt(0xFFFFFF);
      int opaqueColor = 0xFF000000 + randomHexColor;
      _color = Color(opaqueColor);
    });
  }

  void _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget remindButton = FlatButton(
      child: Text("Remind me later"),
      onPressed: () {},
    );

    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {},
    );

    Widget launchButton = FlatButton(
      child: Text("Launch missile"),
      onPressed: null, //  () {
      //Navigator.of(context).pop(); // dismiss dialog
      //launchMissile();
      //},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Notice"),
      content: Text(
          "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
      actions: [
        remindButton,
        cancelButton,
        launchButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
