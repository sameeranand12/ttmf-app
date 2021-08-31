import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ttmf/enterfield.dart';
import 'package:ttmf/homepage.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  'Create Account',
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
              EnterField('Name', Icons.person,),
              EnterField('Email', Icons.mail_rounded),
              EnterField('Password', Icons.lock_rounded, isPassword: true,),
              EnterField('Confirm Password', Icons.lock_rounded,
                  isPassword: true),
              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    color: Color(0xffDD8E31),
                    borderRadius: BorderRadius.circular(47)),
                margin: EdgeInsets.only(left: 260, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'SIGN UP',
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
            ],
          ),
        ),
      ),
    );
  }
}
