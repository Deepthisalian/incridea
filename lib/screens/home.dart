import 'package:flutter/material.dart';
import 'package:login_2/screens/AboutUs.dart';
import 'package:login_2/screens/signIn.dart';
import 'HomePage.dart';
import 'AboutUs.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String msg = 'Flutter RaisedButton Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body:
          PageView
            (children: <Widget>[
            SignInScreen(),
            HomePage(),
            ProfileUI(),


          ]
          ) ,
        )
    );
  }

}