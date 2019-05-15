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
        _showAlertDialog();
      },
    );
  }

  void _showAlertDialog() {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        // This closes the dialog. `context` means the BuildContext, which is
        // available by default inside of a State object. If you are working
        // with an AlertDialog in a StatelessWidget, then you would need to
        // pass a reference to the BuildContext.
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Dialog title"),
      content: Text("This is a Flutter AlertDialog."),
      actions: [
        okButton,
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
