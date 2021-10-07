import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(minutes: 10));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [SizedBox(
              height: 30,
            ),
              Text("Token Number",style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins'
              ),
              ),SizedBox(
              height: 15,
            ),
              ClipOval(
                child: Container(
                  color: Colors.black,
                  height: 110.0,
                  width: 110.0,
                  child: Center(
                      child: Text('5',
                        style: TextStyle(color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins'
                        ),
                        textAlign: TextAlign.center,)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Waiting Time",style: TextStyle(
                fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins'
              ),
              ),
              SizedBox(
                height: 30,
              ),
              Countdown(
              animation: StepTween(
                begin: 10 * 60,
                end: 0,
              ).animate(_controller),
            ),
              ]
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timer =
        '${clockTimer.inMinutes.remainder(60).toString()}  min :  ${(clockTimer.inSeconds.remainder(60)%60).toString()}  sec';

    return Text(
      "$timer",
      style: TextStyle(
        fontSize: 39,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
