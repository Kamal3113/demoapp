import 'package:flutter/material.dart';

class Done extends StatefulWidget {
  final String name;
  final String phn;
  final String mny;
  final DateTime dateTime;
  final String time;
  Done(
      {required this.dateTime,
      required this.mny,
      required this.name,
      required this.phn,
      required this.time});
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.sd_card),
          //   title: Text('sdf'),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/dfg.png"),
              SizedBox(
                width: 80,
              ),
              Icon(Icons.share_sharp)
            ],
          ),
          Image.asset("asset/ss.png"),
          Text(
            "5000",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Sent successfully to"),
          Text(
            "johncena",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text("9856231450"),
          SizedBox(
            height: 20,
          ),
          Text("05:23pm,jan 12, 2022"),
          Image.asset("asset/ptm.jpg"),
        ],
      )),
    );
  }
}
