import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text('Notify when the vehicle is near me',
                style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
          CupertinoSwitch(
            value: status,
            onChanged: (value){
              setState(() {
                print("VALUE : $value");
                status=value;
              });
            },
          )
        ],
      ),
    );
  }
}
