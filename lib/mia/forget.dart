import 'package:flutter/material.dart';
import 'package:miaapp/mia/verification.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forget Password',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            "asset/fglg.png",
          ),
          Stack(
            children: [
              Image.asset(
                "asset/frgt.png",
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.only(top: 200, left: 30, right: 30),
                child: Column(
                  children: [
                    Text(
                      'Enter the email address associated with your account',
                      style: TextStyle(
                        color: Color(0xff00777E),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                        controller: username,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffD7E6EB),
                          labelText: "Enter your email id...",
                        )),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Try another way',
                              style: TextStyle(
                                  color: Color(0XFF00777E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )),
                        // ElevatedButton(
                        //   child: Text(
                        //     "",
                        //     style: TextStyle(fontWeight: FontWeight.bold),
                        //   ),
                        //   onPressed: () => print("it's pressed"),
                        //   style: ElevatedButton.styleFrom(
                        //     primary: Color(0XFF00777E),
                        //     onPrimary: Colors.white,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(32.0),
                        //     ),
                        //   ),
                        // ),
                        ElevatedButton(
                          child: Text(
                            "NEXT",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Verification()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0XFF00777E),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ))),
    );
  }
}
