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
  bool _checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      //                   <--- CheckboxListTile
      title: Text('this is my title'),
      value: _checkedValue,
      onChanged: (newValue) {
        _doSomething(newValue);
      },
      // setting the controlAffinity to leading makes the checkbox come
      // before the title instead of after it
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  void _doSomething(bool isChecked) {
    setState(() {
      _checkedValue = isChecked;
    });
  }
}
