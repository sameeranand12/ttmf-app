import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:ttmf/enterfield.dart';
import 'package:ttmf/homepage.dart';
import 'dart:math' as math;

import 'package:ttmf/profilescreen/screen/my_profile.dart';

import 'database/authenticate.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var name, password, token;

  var _controller = TextEditingController();

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

              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: TextField(
              //     decoration: InputDecoration(labelText: 'Name'),
              //     onChanged: (val) {
              //       name = val;
              //     },
              //   ),
              // ),
              Container(
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
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_rounded),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: 'Email',
                          ),
                          onChanged: (val) {
                            name = val;
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
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
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_rounded),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: 'password',
                          ),
                          onChanged: (val) {
                            password = val;
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: TextField(
              //     decoration: InputDecoration(labelText: 'password'),
              //     onChanged: (val) {
              //       password = val;
              //     },
              //   ),
              // ),

              Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    color: Color(0xffDD8E31),
                    borderRadius: BorderRadius.circular(47)),
                margin: EdgeInsets.only(left: 260, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyProfilePage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: TextButton(
                        child: Text('Login'),
                        onPressed: () {
                          AuthService().login(name, password).then((val) {
                            if (val.data['success']) {
                              token = val.data['token'];
                              Fluttertoast.showToast(
                                  msg: 'authenticated',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfilePage()));
                            }
                          });
                        },
                        style:
                            TextButton.styleFrom(primary: Colors.yellowAccent),
                      )),
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

              //    Positioned(
              //      left: 72.53,
              //    right: -5.87,
              //    top: 20.02,
              //    bottom: 69.52,
              //      child: Stack(
              //
              //        alignment: Alignment.topRight,
              //        children:[
              //          Transform.rotate(
              //            angle: math.pi / .268,
              //            child:  Container(
              //              height: 80,
              //              width: 130,
              //              color: Colors.red,
              //            ),
              //          ),
              //
              //
              //          Transform.rotate(
              //            angle: math.pi / .168,
              //            child:  Container(
              //              height: 85,
              //              width: 125,
              //              color: Colors.blue,
              //            ),
              //          ),
              // ],
              //      ),
              //    ),
            ],
          ),
        ),
      ),
    );
  }
}
