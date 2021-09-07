import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({Key? key}) : super(key: key);

  @override
  _EditMyProfileState createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  var _chosenvalue;
  var age;
  var _ageEditingController = new TextEditingController();
  @override
  void initState() {
    _chosenvalue = 'Male';
    age = '25';
    _ageEditingController.text = age.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDD8E31),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        "Henry Gray",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(fontSize: 25),
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 23
                      ),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Color(0xffDD8E31)),
                        ),
                        contentPadding: EdgeInsets.all(3.0),
                        isDense: true,
                      ),
                      controller: _ageEditingController,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sex",
                      style: TextStyle(fontSize: 25),
                    ),
                    DropdownButton<String>(
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                      value: _chosenvalue,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 30,
                      iconEnabledColor: Colors.grey,
                      items: <String>['Male', 'Female ', 'Other']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _chosenvalue = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child:
                    Text("Other Information", style: TextStyle(fontSize: 25)),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 18
                    ),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffDD8E31)),
                          borderRadius: BorderRadius.circular(0),
                        )),
                    maxLines: 10,
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Container(

                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Color(0xffDD8E31),
                      borderRadius: BorderRadius.circular(47)),
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
