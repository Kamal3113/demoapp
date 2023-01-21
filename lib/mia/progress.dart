import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB5DBE9),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Color(0xff00858A),
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.timelapse),
                    text: "Any Time",
                  ),
                  Tab(
                    icon: Icon(Icons.attach_file),
                    text: "Attachment",
                  ),
                  Tab(
                    icon: Icon(Icons.person_outline_outlined),
                    text: "To",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 90,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff00858A),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25))),
                                  child: ListView.builder(
                                      itemCount: 30,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return ListTile(
                                          title: Text(
                                            'Reached to data',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          trailing: Icon(Icons.lock,
                                              color: Colors.white),
                                          leading:
                                              // Icon(Icons.star),
                                              Icon(Icons.circle,
                                                  color: Colors.orange),
                                        );
                                      }),
                                )),
                            Expanded(
                                flex: 10,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff00858A),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(25),
                                            bottomRight: Radius.circular(25))),
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        RaisedButton(
                                          onPressed: () {},
                                          child: Text('Save Projects'),
                                        )
                                      ],
                                    ))),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff00858A),
                              borderRadius: BorderRadius.circular(34)),
                        )),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff00858A),
                              borderRadius: BorderRadius.circular(34)),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
