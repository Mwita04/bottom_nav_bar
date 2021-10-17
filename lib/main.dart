// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

// Navigation bar built using prebuilt dependencies

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kwetu Labs',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Kwetu Labs",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is a Demo App',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.black),
          //Icon(Icons.add, size: 20, color: Colors.black),
          Icon(Icons.list, size: 20, color: Colors.black),
          Icon(Icons.book_online, size: 20, color: Colors.black),
          Icon(Icons.settings, size: 20, color: Colors.black),
        ],
        animationDuration: Duration(milliseconds: 200),
        index: 2,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current index is $index");
        },
      ),
    );
  }
}
