import 'dart:async';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inc22/reusable_widgets/reusable_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timer_count_down/timer_count_down.dart';

class SignInScreenNew extends StatefulWidget {
  // final String n;
  //final String p;
  const SignInScreenNew({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState("", "");
}

class _SignInScreenState extends State<SignInScreenNew> {
  late String s1, s2;
  _SignInScreenState(String s1, String s2) {
    s1 = s1;
    s2 = s2;
  }
  int _counter = 0;
  late StreamController<int> _events;
  bool session_timeout = false;

  @override
  late Timer _timer;

  String qrData = " ";
  String nameValue = " ";
  //String namev = " ";
  bool valid = false;
  bool flag = false;
  bool wishAll = true;
  String name = " ";
  var glowing = false;
  var glowingsubmit = false;
  static late final Object;
  final TextEditingController _qrdatafield = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _otpTextController = TextEditingController();

  EmailAuth emailAuth = EmailAuth(sessionName: "login");

  // late String value = "";
  //late String namev = "";
  _read() async {
    final pref = await SharedPreferences.getInstance();
    const key = 'my_int_key';
    final value = pref.getString(key)!;
    final namev = pref.getString("name_val")!;
    _SignInScreenState(namev, value);
    //wishAll = false;
    print(value + "**********************************");
  }

  String otp = "";

  @override
  Widget build(BuildContext context) {
    //  if (wishAll) _read();
    bool isLogin = true;

    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background-left.png"),
                  fit: BoxFit.fitWidth,
                  opacity: 0.9),
            ),
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        20, MediaQuery.of(context).size.height * 0.1, 20, 0),
                    child: Column(children: <Widget>[
                      Image(
                          image: const AssetImage('assets/images/logo.png'),
                          width: MediaQuery.of(context).size.width * .7),
                      //logoWidget("assets/images/Font Black.jpg"),
                      //image: DecorationImage(image:new AssetImage("assets/images/logo.jpg"), fit: BoxFit.cover,opacity: 0.8),

                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width - 100,
                              height: MediaQuery.of(context).size.height - 350,
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(255, 61, 71, 247),
                                    Color.fromARGB(255, 71, 182, 209)
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 61, 71, 247),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: Offset(-2, 0),
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 71, 182, 209),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: Offset(2, 0),
                                    )
                                  ]),
                              child: Column(children: [
                                Container(
                                  width: 200,
                                  height: 200,
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 30, 20, 30),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          blurStyle: BlurStyle.normal,
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: Offset(-2, 0),
                                        ),
                                        BoxShadow(
                                          blurStyle: BlurStyle.normal,
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: Offset(2, 0),
                                        )
                                      ]),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        QrImage(
                                          //place where the QR Image will be shown
                                          data: s2,
                                          size: 200,
                                        )
                                      ]),
                                ),
                                Container(
                                  width: 200,
                                  height: 150,
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  decoration: BoxDecoration(
                                      color: Colors.red.shade300,
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30)),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: Offset(-2, 0),
                                        ),
                                        BoxShadow(
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: Offset(2, 0),
                                        )
                                      ]),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          "PARTICIPANT",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w300,
                                              fontSize: 24),
                                        ),
                                        Text(
                                          'NAME',
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w100,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          s1,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          'PID',
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w100,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          s2,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                      ]),
                                )
                              ]))
                        ],
                      ),
                    ])))));
  }
}
