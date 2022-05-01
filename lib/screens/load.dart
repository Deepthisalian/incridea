import 'dart:async';
import 'package:flutter/material.dart';
import 'package:inc22/reusable_widgets/animation.dart';
import 'package:inc22/screens/home.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({Key? key}) : super(key: key);

  @override
  State<LoadScreen> createState() {
    return LloadScreenState();
  }
}

class LloadScreenState extends State<LoadScreen> {
  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, ScreenAnimate(widget: home(),type: "startup"));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const Text(
              "Splash Screen",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}
