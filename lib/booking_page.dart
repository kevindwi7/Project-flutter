import 'package:flutter/material.dart';

class booking extends StatefulWidget {
  @override
  _bookingState createState() => _bookingState();
}

class _bookingState extends State<booking> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();
  final scheduleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking Tiket"),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: firstnameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'First Name',
                  hintText: "Your First Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: 'Last Name',
                  hintText: "Your Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email Address',
                  hintText: "Your Active Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Phone Number',
                  hintText: "Your Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: cityController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_city),
                  labelText: 'Address',
                  hintText: "Your Address",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: scheduleController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.local_airport),
                  labelText: 'Schedule',
                  hintText: "Your flight schedule",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (firstnameController.text == "" ||
                        lastnameController.text == "" ||
                        emailController.text == "" ||
                        phoneController.text == "" ||
                        scheduleController.text == "" ||
                        cityController.text == "") {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Booking Confirmation"),
                            content: Text('Please fill all the field!'),
                            actions: <Widget>[
                              RaisedButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Booking Confirmation"),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text("Name : " + firstnameController.text),
                                  Text(
                                      "Last name : " + lastnameController.text),
                                  Text('Email : ' + emailController.text),
                                  Text('Phone : ' + phoneController.text),
                                  Text('City : ' + cityController.text),
                                  Text('Schedule : ' + scheduleController.text),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              RaisedButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.save), Text("Book Now")],
                  )),
            )
          ],
        )));
  }
}
