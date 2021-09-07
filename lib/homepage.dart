import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ttmf/login.dart';
import 'package:ttmf/signincreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           // crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Container(
               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/10),
               child: Center(
                 child: Image(
                   image: AssetImage(
                     'assets/images/image1.png',
                   ),
                   //width: 234,
                   height: MediaQuery.of(context).size.height/2,
                 ),
               ),
             ),
             // SizedBox(
             //   height: 86,
             // ),
             Container(
               height: MediaQuery.of(context).size.height/3,
               width: double.infinity,
               decoration: BoxDecoration(
                   color: Color(0xffDD8E31),
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(43),  topRight: Radius.circular(43))),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     height: MediaQuery.of(context).size.height/30,
                     width: 118,
                     margin: EdgeInsets.fromLTRB(27, 30, 0, 0),
                     child: Text(
                       'Welcome',
                       style: TextStyle(
                         fontSize: 24,
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.fromLTRB(27, 7, 0, 0),
                     child: Text(
                       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.',
                       style: TextStyle(
                         fontSize: 17,
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.w400,

                       ),
                     ),
                   ),
                   Row(
                     children: [
                       InkWell(
                         onTap: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => Sign(),
                             ),
                           );
                         },
                         child: Container(
                           height: 59,
                           width: 146,
                           decoration: BoxDecoration(
                             color: Colors.black,
                             borderRadius: BorderRadius.circular(47)
                           ),
                           margin: EdgeInsets.fromLTRB(27, 30, 0, 0),
                           child: Center(
                             child: Text(
                               'SIGN UP',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18,
                                 fontStyle: FontStyle.normal,
                                 fontWeight: FontWeight.normal,
                               ),
                             ),
                           ),
                         ),
                       ),
                       InkWell(
                         onTap: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => Login(),
                             ),
                           );
                         },
                         child: Container(
                           height: 59,
                           width: 146,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(47)
                           ),
                           margin: EdgeInsets.fromLTRB(27, 30, 0, 0),
                           child: Center(
                             child: Text(
                               'LOGIN',
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 18,
                                 fontStyle: FontStyle.normal,
                                 fontWeight: FontWeight.normal,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ],
         ),

    );
  }
}
