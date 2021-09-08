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