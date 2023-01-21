import 'package:flutter/material.dart';
import 'package:miaapp/mia/detailpage.dart';

class Createaccount extends StatefulWidget {
  @override
  _CreateaccountState createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00A5D7),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            ' CREATE AN\n  ACCOUNT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Image.asset(
              "asset/createlg.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(children: [
            ElevatedButton.icon(
              icon: Icon(Icons.email),
              label: Text("Sign in with email"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detailpage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0XFF00777E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.person),
              // icon: Icon(Icons.facebook),
              label: Text("Sign in with facebook"),
              onPressed: () => print("it's pressed"),
              style: ElevatedButton.styleFrom(
                primary: Color(0XFF00777E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            )
          ])
        ],
      )),
    );
  }
}
