import 'package:flutter/material.dart';
import 'package:miaapp/mia/verification.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: RaisedButton(
        color: Colors.red,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Verification()));
        },
        child: Text('sdfc'),
      )),
    );
  }
}
