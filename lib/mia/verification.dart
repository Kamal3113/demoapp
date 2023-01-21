import 'package:flutter/material.dart';
import 'package:miaapp/mia/loginmia.dart';
import 'package:miaapp/mia/splashscreen.dart';
import 'package:miaapp/splashscreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  static final int _pinLength = 4;
  void initState() {
    super.initState();

    // dialogbox();
  }

  dialogbox() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xffB5DBE9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(23.0))),
            title: Column(
              children: <Widget>[
                Container(
                    // height: 170,
                    child: Stack(
                  children: [
                    // Image.asset(
                    //   "asset/vrfpswd.png",
                    //   fit: BoxFit.fill,
                    // ),
                    Image.asset("asset/vrlgpop.png"),
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.check,
                        size: 34,
                        color: Color(0XFF00777E),
                      ),
                    ),
                  ],
                )),
                Container(
                    width: 250.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(67),
                    ),
                    child: Text(
                      'Your password has been reset successfully',
                      style: TextStyle(
                          color: Color(0XFF00777E),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 8, left: 45, right: 45),
                    child: Container(
                      height: 40,
                      width: 900,
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        color: Color(0XFF00777E),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginmia()));
                        },
                        child: Text(
                          'DONE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    )),
              ],
            ),
            // content:
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset("asset/vrfpswd.png", fit: BoxFit.fill),
            ),
            Image.asset("asset/vrflogo.png"),
            Stack(
              children: [
                Image.asset(
                  "asset/vrfbtm.png",
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: EdgeInsets.only(top: 120, left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Verification Code',
                        style: TextStyle(
                          color: Color(0xff00777E),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30),
                          child: PinCodeTextField(
                            length: 4,
                            onChanged: (value) {},
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(2),
                              fieldHeight: 50,
                              fieldWidth: 60,
                              activeFillColor: Colors.white,
                            ),
                            appContext: context,
                          )),
                      Column(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Splashscreen()));
                            },
                            child: Text('Resend code',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          ElevatedButton(
                            child: Text(
                              "     SUBMIT     ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Future.delayed(Duration.zero, () {
                                this.dialogbox();
                              });
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
            ),
          ],
        )
        // body: Column(
        //   children: [
        //     Expanded(
        //       flex: 19,
        //       child: Container(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.end,
        //           children: [
        //             Stack(
        //               children: [
        //                 Image.asset("asset/vrfpswd.png"),
        //                 Center(
        //                   child: Text(
        //                     '                               Verification',
        //                     style: TextStyle(
        //                         fontSize: 20, fontWeight: FontWeight.bold),
        //                   ),
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 20,
        //       child: Container(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [Image.asset("asset/vrflogo.png")],
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 48,
        //       child: Container(
        //         child:
        // Stack(
        //           children: [
        //             Image.asset(
        //               "asset/vrfbtm.png",
        //               fit: BoxFit.fill,
        //             ),
        //             Container(
        //               padding: EdgeInsets.only(top: 120, left: 30, right: 30),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                 children: [
        //                   Text(
        //                     'Verification Code',
        //                     style: TextStyle(
        //                       color: Color(0xff00777E),
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                   Padding(
        //                       padding: const EdgeInsets.symmetric(
        //                           vertical: 8.0, horizontal: 30),
        //                       child: PinCodeTextField(
        //                         length: 4,
        //                         onChanged: (value) {},
        //                         pinTheme: PinTheme(
        //                           shape: PinCodeFieldShape.box,
        //                           borderRadius: BorderRadius.circular(2),
        //                           fieldHeight: 50,
        //                           fieldWidth: 60,
        //                           activeFillColor: Colors.white,
        //                         ),
        //                         appContext: context,
        //                       )),
        //                   Column(
        //                     children: [
        //                       FlatButton(
        //                         onPressed: () {
        //                           Navigator.push(
        //                               context,
        //                               MaterialPageRoute(
        //                                   builder: (context) => Splashscreen()));
        //                         },
        //                         child: Text('Resend code',
        //                             style: TextStyle(
        //                                 color: Colors.black,
        //                                 fontWeight: FontWeight.bold)),
        //                       ),
        //                       ElevatedButton(
        //                         child: Text(
        //                           "     SUBMIT     ",
        //                           style: TextStyle(fontWeight: FontWeight.bold),
        //                         ),
        //                         onPressed: () {
        //                           Future.delayed(Duration.zero, () {
        //                             this.dialogbox();
        //                           });
        //                         },
        //                         style: ElevatedButton.styleFrom(
        //                           primary: Color(0XFF00777E),
        //                           onPrimary: Colors.white,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(32.0),
        //                           ),
        //                         ),
        //                       )
        //                     ],
        //                   )
        //                 ],
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
