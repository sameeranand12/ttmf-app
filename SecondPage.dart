import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("Hey! Welcome",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                )
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,top: 10),
              height: 300,
              width: 175,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(15),
                color: Colors.orangeAccent
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('Book an Appointment',style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    ),
                  Container(
                    height: 35,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.black, borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: ()=>{},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,top: 10),
              height: 300,
              width: 175,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('See the Doctor',style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.black, borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: ()=>{},
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
