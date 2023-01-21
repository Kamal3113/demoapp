// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:miaapp/loginscreen.dart';
import 'package:miaapp/mia/createaccount.dart';
import 'package:miaapp/mia/detailpage.dart';
import 'package:miaapp/mia/drawer.dart';
import 'package:miaapp/mia/forget.dart';
import 'package:miaapp/mia/homescreen.dart';
import 'package:miaapp/mia/loginmia.dart';
import 'package:miaapp/mia/progress.dart';
import 'package:miaapp/mia/splashscreen.dart';
import 'package:miaapp/mia/verification.dart';
import 'package:miaapp/newcustom.dart';
import 'package:miaapp/splashscreen.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home:Loginmia()
        // Drawerscreen()
        //HomePage()
        //  Verification()
        // Forgetpassword()
        // Loginmia()
        // Createaccount()
        //Detailpage()
        // Splashscreen(),
        );
  }
}
