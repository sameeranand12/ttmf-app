import 'package:flutter/material.dart';
import 'package:ttmf/profilescreen/screen/my_profile.dart';
import 'Bottom_Navigation.dart';
import 'Bottom_Navigation_Notifications.dart';


class bottomnavigate extends StatefulWidget {
  const bottomnavigate({Key? key}) : super(key: key);

  @override
  _bottomnavigateState createState() => _bottomnavigateState();
}

class _bottomnavigateState extends State<bottomnavigate> {
  int _selectedPage = 0;
  List<Widget> pageList = [];
  @override
  void initState() {
    pageList.add(WelcomeScreen());
    pageList.add(Mapq());
    pageList.add(Notifications());
    pageList.add(MyProfilePage2());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffDD8E31),
        ),
        body: IndexedStack(
          index: _selectedPage,
          children: pageList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_location),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
            ),

          ],
          currentIndex: _selectedPage,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

}
