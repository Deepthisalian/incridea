import 'dart:io';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:inc22/screens/AboutUs.dart';
import 'package:inc22/screens/signIn.dart';
import 'package:inc22/screens/signIn_new.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage.dart';
import 'AboutUs.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

SharedPreferences pref = SharedPreferences.getInstance() as SharedPreferences;

class _homeState extends State<home> {
  String msg = 'Flutter RaisedButton Example';
  String value = "", namev = "";
  _read() async {
    final prefs = await SharedPreferences.getInstance();
    var key = 'my_int_key';
    value = prefs.getString(key) ?? "0";
    namev = prefs.getString("name_val") ?? "";
    // wishAll = false;
    print(value);
  }

  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    exit(0); // Do some stuff.
    return true;
  }

  @override
  Widget build(BuildContext context) {
    _read();
    return MaterialApp(
        home: Scaffold(
      body: PageView(children: <Widget>[
        if (value == "0") SignInScreen() else SignInScreenNew(),
        HomePage(),
        ProfileUI()
      ]),
    ));
  }
}
