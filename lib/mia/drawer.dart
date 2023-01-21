import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:miaapp/mia/forget.dart';
import 'package:miaapp/mia/homescreen.dart';
import 'package:miaapp/mia/loginmia.dart';
import 'package:miaapp/mia/progress.dart';
import 'package:miaapp/mia/verification.dart';

class DrawerItem {
  String title;
  IconData icon;
  Color color;
  DrawerItem(this.title, this.icon, this.color);
}

class Drawerscreen extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Chat", Icons.chat, Colors.white),
    new DrawerItem("Profile", Icons.person, Colors.white),
    new DrawerItem("Files", Icons.file_copy, Colors.white),
    new DrawerItem("Contact", Icons.contact_phone, Colors.white),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<Drawerscreen> {
 
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Homescreen();
      case 1:
        return new Forgetpassword();
      case 2:
        return new Progress();
      case 3:
        return new Loginmia();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _signOut()  async{
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Loginmia()), (route) => false);
    //  Navigator.push(
    //                         context,
    //                         MaterialPageRoute(
    //                             builder: (context) => Loginmia()));
     
}
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: CircleAvatar(
            backgroundColor: Color(0xff94D4E0),
            radius: 26,
            child: new Icon(
              d.icon,
              color: d.color,
              size: 30,
            )),
        title: new Text(d.title, style: TextStyle(color: Colors.white)),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Color(0xffB5DBE9),
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
        actions: [
          Row(
            children: [
              Text('Hi, John'),
              SizedBox(
                width: 5,
              ),
              IconButton(icon: Icon(Icons.login_outlined), onPressed: (){
                 _signOut();
              }),
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 34,
                      color: Color(0XFF00777E),
                    ),
                  )),
            ],
          )
        ],
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xff00575F),
          ),
          child: new Drawer(
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 70, right: 240),
                  // child:
                  //     IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                ),
                new Column(
                  children: drawerOptions,
                ),
              ],
            ),
          )),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
