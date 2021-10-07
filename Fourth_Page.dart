import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: contain(),
    );
  }
}
class contain extends StatefulWidget {
  const contain({Key? key}) : super(key: key);

  @override
  _containState createState() => _containState();
}

class _containState extends State<contain> {
  var hour=['Hr     ','1', '2', '3', '4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'];
  var minute=['Min     ','00','01', '02', '03', '04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59',];
  var hourq=['Hr     ','1', '2', '3', '4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'];
  var minuteq=['Min     ','00','01', '02', '03', '04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59',];
  String dropdownValue = 'Hr     ';
  String min='Min     ';
  String dropdownValueq= 'Hr     ';
  String minq='Min     ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            child: Text("Book an Appointment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text("Set Time",style: TextStyle(fontSize: 20),),
            ),
          Row(
          children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2),
            ),
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton<String>(
            value: dropdownValue,
            iconSize: 24,
            style: const TextStyle(color: Colors.black),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: hour.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,style: TextStyle(fontSize: 20)),
              );
            }).toList(),
        ),
          ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2),
              ),
              padding: const EdgeInsets.only(left: 10),
              child: DropdownButton<String>(
                value: min,
                iconSize: 24,
                style: const TextStyle(color: Colors.black),
                onChanged: (String? newValue) {
                  setState(() {
                    min = newValue!;
                  });
                },
                items: minute.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style: TextStyle(fontSize: 20),),
                  );
                }).toList(),
              ),
            )
          ],
        ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text("Set Reminder",style: TextStyle(fontSize: 20),),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    value: dropdownValueq,
                    iconSize: 24,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValueq = newValue!;
                      });
                    },
                    items: hourq.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(fontSize: 20)),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    value: minq,
                    iconSize: 24,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        minq = newValue!;
                      });
                    },
                    items: minuteq.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(fontSize: 20),),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 35,
              width: 100,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: ()=>{},
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),    ]
      ),
    );
  }
}
