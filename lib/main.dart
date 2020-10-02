import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_flutter/constant.dart'
    show kBackgroundColor, kBodyTextColor;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project 1',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(bodyText2: TextStyle(color: kBodyTextColor)),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFF3383CD), Color(0xFF11249F)]),
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/restaurant-chocolat.jpg"))),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Color(0xFFE5E5),
            ),
          ),
        ),
        Flexible(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Welcome to Golden Tulip Holland Batu",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Flexible(
                      flex: 12,
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: ListView(
                          children: <Widget>[
                            Text(
                              "A restaurant (French: [ʁɛstoʁɑ̃] (About this soundlisten)), or an eatery, is a business that prepares and serves food and drinks to customers.[1] Meals are generally served and eaten on the premises, but many restaurants also offer take-out and food delivery services. Restaurants vary greatly in appearance and offerings, including a wide variety of cuisines and service models ranging from inexpensive fast food restaurants and cafeterias, to mid-priced family restaurants, to high-priced luxury establishments.",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "In Western countries, most mid-to high-range restaurants serve alcoholic beverages such as beer and wine. Some restaurants serve all the major meals, such as breakfast, lunch, and dinner (e.g., major fast food chains, diners, hotel restaurants, and airport restaurants). Other restaurants may serve only a single meal (for example, a pancake house may only serve breakfast) or they may serve two meals (e.g., lunch and dinner)",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "The restaurant as it is contemporarily understood did not exist until the end of the 18th century. Sitting down in a public restaurant specifically for a meal, with a waiter and a fixed menu is a relatively recent concept in culinary history.",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Golden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. The hotel is geared towards the needs and requirements of all families, big and small. Our hotel offers various activities for kids, along with a pool/slide.",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Food and beverage is an important part of life. This is why we want each and every meal to be a culinary experience regardless if you are travelling or just popping in at a nearby hotel for breakfast, brunch, lunch or dinner! Hanging in the bar should be fun and easy, or simply relaxing. Enjoy your dining experiences at Golden Tulip Holland Resort Batu.",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ))
      ]),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
