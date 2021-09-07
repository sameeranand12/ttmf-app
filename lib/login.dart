import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ttmf/enterfield.dart';
import 'package:ttmf/homepage.dart';
import 'dart:math' as math;

import 'package:ttmf/profilescreen/screen/profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffDD8E31),
        ),
        body: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.5, left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 36,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              EnterField('Email', Icons.mail_rounded),
              EnterField('Password', Icons.lock_rounded, isPassword: true,),

              Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                  color: Color(0xffDD8E31),
                  borderRadius: BorderRadius.circular(47)),
              margin: EdgeInsets.only(left: 260, top: 30),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'LOGIN ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
                ),

              Positioned(
                left: 72.53,
              right: -5.87,
              top: 20.02,
              bottom: 69.52,
                child: Stack(

                  alignment: Alignment.topRight,
                  children:[
                    Transform.rotate(
                      angle: math.pi / .268,
                      child:  Container(
                        height: 80,
                        width: 130,
                        color: Colors.red,
                      ),
                    ),


                    Transform.rotate(
                      angle: math.pi / .168,
                      child:  Container(
                        height: 85,
                        width: 125,
                        color: Colors.blue,
                      ),
                    ),
           ],
                ),
              ),
            ],
          ),

        ),
    );
  }
}
