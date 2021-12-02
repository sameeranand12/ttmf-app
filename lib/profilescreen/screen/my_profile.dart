import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ttmf/profilescreen/screen/edit_my_profile.dart';
import 'package:ttmf/user/user.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDD8E31),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 0, right: 0, bottom: 5, top: 0),
              child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Text(
                "MyProfile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/image1.png'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "Henry Gray",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  new Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditMyProfile(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        size: 30,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Age",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "25",
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Sex",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Male",
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Text("Other Information", style: TextStyle(fontSize: 25)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class MyProfilePage2 extends StatefulWidget {
  const MyProfilePage2({Key? key}) : super(key: key);

  @override
  _MyProfilePage2State createState() => _MyProfilePage2State();
}

class _MyProfilePage2State extends State<MyProfilePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 0, right: 0, bottom: 5, top: 0),
              child: InkWell(
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Text(
                "MyProfile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/image1.png'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('')
                      ],
                    ),
                  ),
                  new Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditMyProfile2(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        size: 30,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Age",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "25",
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Sex",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Male",
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Text("Other Information", style: TextStyle(fontSize: 25)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed.",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
