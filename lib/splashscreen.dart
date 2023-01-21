import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:miaapp/done.dart';

class Splashscr extends StatefulWidget {
  const Splashscr({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscr> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phn = TextEditingController();
  TextEditingController money = TextEditingController();
  final timeController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    timeController.dispose();
    super.dispose();
  }

  var date = DateTime.now();
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: RaisedButton(
            color: Colors.blue,
            child: Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Done(
                          dateTime: date,
                          mny: money.text,
                          name: nameController.text,
                          phn: phn.text,
                          time: timeController.text)));
            }),
        appBar: AppBar(
          title: Text('Paytm Payment'),
        ),
        body: Column(
          children: <Widget>[
            // Textfield
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                style: Theme.of(context).textTheme.caption!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                controller: nameController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black45,
                  ),
                  hintText: "Name",
                  hintStyle: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                  fillColor: Colors.red,
                ),
                onChanged: (str) {
                  // To Do
                },
                onSubmitted: (str) {
                  // To Do
                },
              ),
            ),

            // Textfield with Suffix and Prefix

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                style: Theme.of(context).textTheme.caption!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                controller: phn,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                maxLength: 10,
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  helperText: "",
                  labelText: "Phone no.",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black45,
                  ),
                  hintText: "",
                  hintStyle: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                  fillColor: Colors.red,
                ),
                onChanged: (str) {
                  // To do
                },
                onSubmitted: (str) {
                  // To do
                },
              ),
            ),
            // Textform Field
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextFormField(
                maxLength: 12,
                autofocus: false,
                textAlign: TextAlign.start,
                autovalidate: true,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                controller: money,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Money",
                  helperText: "",
                  contentPadding: EdgeInsets.all(15.0),
                  prefixIcon: Icon(
                    Icons.money,
                    color: Colors.black45,
                  ),
                  // suffixIcon: Icon(
                  //   Icons.money,
                  //   color: Colors.black45,
                  // ),
                  errorStyle: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                      ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(
                      color: Color(0xFF26b78b),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(
                      color: Color(0xFF26b78b),
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(
                      color: Color(0xFF26b78b),
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(
                      color: Color(0xFF26b78b),
                    ),
                  ),
                  hintText: "",
                  hintStyle: Theme.of(context).textTheme.caption!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(
                      color: Color(0xFF26b78b),
                    ),
                  ),
                  focusColor: Colors.green,
                ),
                onChanged: (str) {
                  // To do
                },
                onSaved: (str) {
                  //  To do
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFe9f2f2),
                      borderRadius: BorderRadius.circular(30)),
                  // border: Border.all(width: 1, color: Colors.grey)),
                  child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          FlatButton(
                            child: Row(
                              children: [
                                Text(DateFormat('yyyy-MM-dd').format(date)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.calendar_today_outlined)
                              ],
                            ),
                            onPressed: () async {
                              result = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2040, 1, 1),
                              );
                              setState(() {
                                date = result;
                              });
                              print('$result');
                            },
                          ),
                        ],
                      )),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    width: 100,
                    child: TextField(
                      readOnly: true,
                      controller: timeController,
                      decoration: InputDecoration(hintText: 'Time'),
                      onTap: () async {
                        var time = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        timeController.text = time!.format(context);
                      },
                    )),
              ],
            )
          ],
        ));
  }
}
