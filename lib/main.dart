import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_flutter/booking_page.dart';
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
  Color _iconColor = Colors.grey[500];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.blue[200], Colors.white])),
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdns.klimg.com/merdeka.com/i/w/news/2020/04/23/1170310/670x335/kemenhub-bandara-tetap-beroperasi-normal-meski-pesawat-dilarang-angkut-penumpang.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: FloatingActionButton(
                            backgroundColor: Colors.grey[200],
                            onPressed: () {
                              setState(() {
                                if (_iconColor == Colors.grey[500]) {
                                  _iconColor = Colors.red;
                                } else if (_iconColor == Colors.red) {
                                  _iconColor = Colors.grey[500];
                                }
                              });
                            },
                            child: Icon(
                              Icons.favorite,
                              color: _iconColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn2.tstatic.net/tribunnews/foto/bank/images/bandara-soekarno-hatta-ya_20170731_110703.jpg"),
                                    fit: BoxFit.fill),
                              ),
                              margin: EdgeInsets.only(left: 2.5, right: 2.5),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://lenteratoday.com/wp-content/uploads/2020/07/Ilustrasi-bandara-800x600.jpg"),
                                    fit: BoxFit.fill),
                              ),
                              margin: EdgeInsets.only(left: 2.5, right: 2.5),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://garudaonline.co/wp-content/uploads/2019/03/images-7-4.jpeg"),
                                    fit: BoxFit.fill),
                              ),
                              margin: EdgeInsets.only(left: 2.5, right: 2.5),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://radardepok.sgp1.cdn.digitaloceanspaces.com/assets/2020/04/bandara-peswat-dan-penumpang.jpg"),
                                    fit: BoxFit.fill),
                              ),
                              margin: EdgeInsets.only(left: 2.5, right: 2.5),
                            )),
                      ],
                    ),
                  )),
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
                                "Booking Tiket Pesawat",
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
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return booking();
                  }));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                textColor: Colors.black,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Colors.blue[300], Colors.white]),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Book Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18)),
                )))
      ],
    ));
  }
}
