import 'package:flutter/material.dart';
import 'dart:async';

import 'package:miaapp/mia/loginmia.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => Loginmia()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 25,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("asset/sptocr.png"),
                  Image.asset("asset/sptop.png")
                ],
              ),
            ),
          ),
          Expanded(
            flex: 50,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("asset/mialogo.png"),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 25,
            child: Container(
              child: Row(
                children: [
                  Image.asset("asset/spbtm.png"),
                  Image.asset("asset/spbtcr.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
