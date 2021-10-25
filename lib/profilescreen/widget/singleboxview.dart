import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleBoxView extends StatefulWidget {
  String title;
  SingleBoxView({required this.title});

  @override
  _SingleBoxViewState createState() => _SingleBoxViewState();
}

class _SingleBoxViewState extends State<SingleBoxView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 53,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 6.0),

          ),

        ],
        border: Border(
          top: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          right: BorderSide(color: Colors.black),
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: Text(widget.title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 23,
        ),
      ),
    );
  }
}
