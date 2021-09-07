import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ttmf/profilescreen/screen/my_profile.dart';
import 'package:ttmf/profilescreen/wediget/singleboxview.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDD8E31),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 7,horizontal: 0),
                child: InkWell(
                    child: Icon(Icons.arrow_back,
                      size: 30,
                    ),
                    onTap:(){ Navigator.pop(context);}

                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/image1.png'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Henry Gray",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                child: SingleBoxView(
                  title: "My Profile",
                ),
                onTap: () {
                  print("First one tap");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfilePage(),
                    ),
                  );
                },
              ),
              InkWell(
                child: SingleBoxView(
                  title: 'My Appointment',
                ),
                onTap: () {
                  print("Second one tap");
                },
              ),
              InkWell(
                child: SingleBoxView(
                  title: 'Notifications',
                ),
                onTap: (){},
              ),
              InkWell(
                child: SingleBoxView(
                  title: 'Rewards',
                ),
                onTap: (){},
              ),
              InkWell(
                child: SingleBoxView(
                  title: 'Payments Options',
                ),
                onTap: () {},
              ),
              InkWell(
                child: SingleBoxView(
                  title: 'Help',
                ),
                onTap: () {},
              ),
              InkWell(
                child: SingleBoxView(
                  title: 'FAQ',
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
