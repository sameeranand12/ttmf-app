import 'dart:ffi';

import 'package:flutter/material.dart';

class EnterField extends StatelessWidget {
  final IconData icons;

  final String title;
  final String value;

  var _controller = TextEditingController();

  final bool isPassword;

  EnterField(this.title, this.icons, this.value, {this.isPassword = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),

      // margin: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 21,
          ),
          Container(
            height: 60,
            child: Card(
              elevation: 8,
              child: TextField(
                controller: _controller,
                obscureText: isPassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(icons),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: title,
                ),
                onChanged: (val) {
                  val = value;
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: TextField(
//                   decoration: InputDecoration(labelText: 'Name'),
//                   onChanged: (val) {
//                     name = val;