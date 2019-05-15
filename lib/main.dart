import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// boilerplate code
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// widget class
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// state class
// We will replace this class in each of the examples below
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Button'),
      onPressed: () {
        _showAlertDialog(context);
      },
    );
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
      onPressed: () {
        //onPressed: null, (Disable)
        Navigator.of(context).pop(); // dismiss dialog
        //launchMissile();
      },
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
