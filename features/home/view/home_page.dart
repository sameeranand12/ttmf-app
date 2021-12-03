import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_ml_example/features/home/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    final submitButton = Material(
        elevation: 5,
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            // Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                               <name of the next page>()));
          },
          child: Text(
            "Submit",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ));

    ///////////////////////////////////////////////////click button//////////////////////////////////......................................
    final clickButton = RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: Colors.black,
      child: Icon(
        Icons.camera,
        color: Colors.white,
        size: 25.0,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            )),
        backgroundColor: Colors.amber.shade800,
        title: Text('Face Recognition'),
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.fromLTRB(50,20,20,20),
      //   child: Row(
      //     children: [
      //       // FloatingActionButton(backgroundColor: Colors.amber.shade800,
      //       //   onPressed: () => null,
      //       //   child: Icon(Icons.camera_alt,),
      //       // )
      //     ],
      //   ),
      // ),

      body: Center(
        child: SingleChildScrollView(
          child: GetBuilder<HomeController>(
            init: _homeController,
            initState: (_) async {
              await _homeController.loadCamera();
              _homeController.startImageStream();
            },
            builder: (_) {
              return Container(
                child: Column(
                  children: [
                    _.cameraController != null &&
                            _.cameraController!.value.isInitialized
                        ? Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: CameraPreview(_.cameraController!))
                        : Center(child: Text('loading')),
                    SizedBox(height: 15),
                    // Expanded(
                    //   // child: Container(
                    //   //   alignment: Alignment.topCenter,
                    //   //   width: 200,
                    //   //   height: 200,
                    //   //   color: Colors.white,
                    //   //   child: Image.asset(
                    //   //     'images/${_.faceAtMoment}',
                    //   //     fit: BoxFit.fill,
                    //   //   ),
                    //   // ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                        "Keep your phone steady to capture your face. If isn't clear this process might continue again. ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 20, 20, 20),
                      child: Row(
                        children: [
                          clickButton,
                          Center(
                              child: SizedBox(
                                  height: 50, width: 120, child: submitButton))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
