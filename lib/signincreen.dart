import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ttmf/homepage.dart';



class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xffDD8E31),

        ), //AppBar
     body: Column(
       children: [
         Container(
           child: InkWell(
             onTap: () {
               Navigator.pop(context);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => HomePage(),
                          //   ),
                          // );
                        },

             child: Icon(
               Icons.arrow_back_ios_outlined),
           ),
      ),

       ],
     ),
      ),

    );
  }
}
