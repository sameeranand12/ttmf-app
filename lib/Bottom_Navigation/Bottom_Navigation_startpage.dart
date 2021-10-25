import 'package:flutter/material.dart';
import 'Bottom_Navigation.dart';
import 'Bottom_Navigation_Notifications.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottomnavigate(),
    );
  }
}
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
    pageList.add(HomeScreen());
    pageList.add(Mapq());
    pageList.add(Notifications());
    //  pageList.add(LocationScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.orangeAccent,
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
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

}
