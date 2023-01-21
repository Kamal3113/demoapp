import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:miaapp/mia/createaccount.dart';
import 'package:miaapp/mia/drawer.dart';
import 'package:miaapp/mia/forget.dart';
import 'package:miaapp/mia/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class Loginmia extends StatefulWidget {
  const Loginmia({Key? key}) : super(key: key);

  @override
  _LoginmiaState createState() => _LoginmiaState();
}

class _LoginmiaState extends State<Loginmia> {
  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color(0xffD7E6EB),
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color(0xffD7E6EB),
          width: 3,
        ));
  }
 signInWithGoogle() async {
  final GoogleSignInAccount googleuser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication googleAuth = await googleuser.authentication;

  final
  OAuthCredential credential = GoogleAuthProvider.credential(
    idToken: googleAuth.idToken,
    accessToken: googleAuth.accessToken
  );
   await FirebaseAuth.instance.signInWithCredential(credential);
Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Drawerscreen()));
 


}

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.green[200],
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'LOGIN YOUR ACCOUNT',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 2.0,
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
                Shadow(
                  offset: Offset(2.0, 10.0),
                  blurRadius: 5.0,
                  color: Color.fromARGB(50, 0, 0, 50),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
              height: 150,
              decoration:
                  BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
              child: Image.asset(
                "asset/profile.png",
                fit: BoxFit.fill,
              )),
          SizedBox(height: 10),
          Stack(
            children: [
              Image.asset(
                "asset/loginbtm.png",
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.only(top: 180, left: 30, right: 30),
                child: Column(
                  children: [
                    TextField(
                        controller: username,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffD7E6EB),
                          labelText: "Username",
                          prefixIcon: Icon(Icons.people),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                    Container(height: 20),
                    TextField(
                        controller: password,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffD7E6EB),
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(onPressed: () {}, child: Text('')),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgetpassword()));
                            },
                            child: Text('Forgot password'))
                      ],
                    ),
                    ElevatedButton(
                      child: Text(
                        "      LOG IN       ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Homescreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFF00777E),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                     ElevatedButton(
                      child: Text(
                        "      GoogleSingIn       ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        signInWithGoogle();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Homescreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFF00777E),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Createaccount()));
                        },
                        child: Text('Create an account'))
                  ],
                ),
              )
            ],
          )
        ],
      )),
    ));
  }
  
}
