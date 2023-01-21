import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({Key? key}) : super(key: key);

  @override
  _DetailpageState createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
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

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset("asset/newacttp.png", fit: BoxFit.fill),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
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
                  Container(height: 5),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffD7E6EB),
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 5),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffD7E6EB),
                        // prefixIcon: Icon(Icons.password),
                        labelText: "Password",
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                  Container(height: 5),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffD7E6EB),
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Confirm Password",
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      )),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  child: Image.asset("asset/newactbtm.png", fit: BoxFit.fill),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 24,
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                )
              ],
            ),
          ],
        ));
  }
}
