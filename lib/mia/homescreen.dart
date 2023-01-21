import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:miaapp/mia/forget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage, context),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xff363F7E),
        barBackgroundColor: Color(0XFF76B3C2),
        inactiveIconColor: Colors.white,
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.chat,
              title: "Chat",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.search,
              title: "Search",
              onclick: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Forgetpassword()));
              }),
          TabData(iconData: Icons.shopping_cart, title: "Basket")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[Text("Hello"), Text("World")],
        ),
      ),
    );
  }
}

_getPage(int page, BuildContext context) {
  switch (page) {
    case 0:
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Color(0XFF76B3C2),
              ),
              padding: EdgeInsets.all(10),
              child: CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 15.0,
                animation: true,
                percent: 60 / 100,
                center: Text(
                  "60.0%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: Text(
                  "Order this Month",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                backgroundColor: Colors.white,
                circularStrokeCap: CircularStrokeCap.round,
                linearGradient: LinearGradient(
                  colors: [Color(0xff363F7E), Color(0xff00B3B7)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              )),
          Center(
            child: Text(
              'Pending projects',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 25),
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Color(0xff00777E),
                      unselectedLabelColor: Color(0XFF76B3C2),
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      // indicator: RoundedRectangleTabIndicator(
                      //     weight: 2, width: 10, color: kBlackColor),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Daily'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Weekly'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Monthly'),
                          ),
                        )
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 170,
                      child: TabBarView(children: <Widget>[
                        ListView.builder(
                            itemCount: 20,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(right: 19),
                                height: 90,
                                width: 290,
                                decoration: BoxDecoration(
                                    color: Color(0XFF76B3C2),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: Image.asset(
                                          "asset/p1.jpg",
                                          // width: 300,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          'View detials',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                ),
                              );
                            }),
                        // Container(
                        //   // color: Color(0XFF76B3C2),
                        //   margin: EdgeInsets.only(top: 2, bottom: 2),
                        //   child: ListView.builder(
                        //       padding: EdgeInsets.only(left: 25, right: 6),
                        //       itemCount: 20,
                        //       //newbooks.length,
                        //       physics: BouncingScrollPhysics(),
                        //       scrollDirection: Axis.horizontal,
                        //       itemBuilder: (context, index) {
                        //         return Row(
                        //           children: [
                        //             Container(
                        //               margin: EdgeInsets.only(right: 19),
                        //               // height: 210,
                        //               width: 220,
                        //               decoration: BoxDecoration(
                        //                   borderRadius:
                        //                       BorderRadius.circular(10),
                        //                   color: Colors.red,
                        //                   image: DecorationImage(
                        //                       image: AssetImage(
                        //                         "asset/p1.jpg",
                        //                         // newbooks[index].image
                        //                       ),
                        //                       fit: BoxFit.fill)),
                        //             ),
                        //             FlatButton(
                        //                 onPressed: () {},
                        //                 child: Text('View detials'))
                        //           ],
                        //         );
                        //       }),
                        // ),
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          // height: 210,
                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 25, right: 6),
                              itemCount: 12,
                              //newbooks.length,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 19),
                                  height: 210,
                                  width: 153,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.amber,
                                      image: DecorationImage(
                                          image: AssetImage("asset/p1.jpg"
                                              // newbooks[index].image
                                              ),
                                          fit: BoxFit.fill)),
                                );
                              }),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          height: 210,
                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 25, right: 6),
                              itemCount: 4,
                              //newbooks.length,
                              reverse: true,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 19),
                                  height: 210,
                                  width: 153,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "asset/p1.jpg",
                                            // newbooks[index].image
                                          ),
                                          fit: BoxFit.fill)),
                                );
                              }),
                        ),
                      ]))
                ],
              ),
            ),
          ),
          // Container(
          //     // color: Colors.red,
          //     height: 180,
          //     child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 15,
          //         itemBuilder: (BuildContext context, int index) {
          //           // Booktype type = bt[index];
          //           return GestureDetector(
          //               onTap: () {
          //                 // Navigator.push(
          //                 //     context,
          //                 //     MaterialPageRoute(
          //                 //         builder: (context) => Test(
          //                 //               bktype: type,
          //                 //             )));
          //                 // setState(() {
          //                 //   list = type;
          //                 // });
          //                 // getbooklist(context, type);
          //                 // print(list);
          //               },
          //               child: Column(
          //                 children: [
          //                   Container(
          //                       // height: 150,
          //                       width: 150,
          //                       child: Card(
          //                           margin: EdgeInsets.all(10),
          //                           semanticContainer: true,
          //                           clipBehavior: Clip.antiAliasWithSaveLayer,
          //                           shape: RoundedRectangleBorder(
          //                             borderRadius: BorderRadius.circular(15),
          //                           ),
          //                           child: Image.asset(
          //                             "asset/p1.jpg",
          //                             fit: BoxFit.fill,
          //                           ))),
          //                   Padding(
          //                       padding: EdgeInsets.only(
          //                         top: 3,
          //                       ),
          //                       child: Text('Swift 1',
          //                           style: TextStyle(
          //                               color: Colors.black, fontSize: 16)))
          //                 ],
          //               ));
          //         })),

          //   ],
          // )
        ],
      );
    case 1:
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: CarouselSlider.builder(
              itemCount: 15,
              options: CarouselOptions(
                viewportFraction: 0.5,
                enlargeCenterPage: true,
                height: 420,
                // autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                reverse: false,
                aspectRatio: 5.0,
              ),
              itemBuilder: (context, i, id) {
                //for onTap to redirect to another screen
                return GestureDetector(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFF00777E),
                          borderRadius: BorderRadius.circular(90),
                          border: Border.all(
                            color: Color(0XFF00777E),
                          )),
                      //ClipRRect for image border radius
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  border: Border.all(
                                    color: Color(0XFF00777E),
                                  )),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0XFF00B9D5),
                                      borderRadius: BorderRadius.circular(90),
                                      border: Border.all(
                                        color: Color(0XFF00777E),
                                      )),
                                  child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(90),
                                        child: Image.asset(
                                          "asset/p1.jpg",
                                          width: 300,
                                          fit: BoxFit.cover,
                                        ),
                                      )))),
                          Text(
                            'Do you know about PHP?',
                            style: TextStyle(
                                color: Color(0XFF00B9D5),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                'PHP is widely used program dynamic website...',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.justify,
                              )),
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: MaterialButton(
                                onPressed: () {},
                                color: Color(0XFF00B9D5),
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ))
                        ],
                      )),
                  onTap: () {
                    // var url = imageList[i];
                    // print(url.toString());
                  },
                );
              },
            ),
          ),
        ],
      );
    default:
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("This is the basket page"),
          RaisedButton(
            child: Text(
              "Start new page",
              style: TextStyle(color: Colors.white),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          )
        ],
      );
  }
}
