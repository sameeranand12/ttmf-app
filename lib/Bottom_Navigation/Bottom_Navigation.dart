import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
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
class Mapq extends StatefulWidget {
  const Mapq({Key? key}) : super(key: key);

  @override
  _MapqState createState() => _MapqState();
}

class _MapqState extends State<Mapq> {
  late GoogleMapController mapController;
  late Marker origin;
  Set<Marker> _markers={};
  final LatLng _center = const LatLng(28.7041, 77.1025);
  void _onMapCreated(GoogleMapController controller){
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(markerId: MarkerId('Id 1'), position: LatLng(28.7041, 77.1025)),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set<Marker>.of(
            <Marker>[
              Marker(
                  onTap: () {
                    print('Tapped');
                  },
                  draggable: true,
                  markerId: MarkerId('Marker'),
                  position: _center,
                  onDragEnd: ((newPosition) {
                    print(newPosition.latitude);
                    print(newPosition.longitude);
                  }))
            ],
          ),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }

}
