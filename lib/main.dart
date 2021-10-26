import 'package:flutter/material.dart';
import 'package:ttmf/Bottom_Navigation/Bottom_Navigation_startpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xffDD8E31),

        ), //AppBar
        body:bottomnavigate(),
      ),
    );
  }
}

