import 'dart:async';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inc22/reusable_widgets/animation.dart';
import 'package:inc22/reusable_widgets/reusable_widget.dart';
import 'package:inc22/screens/HomePage.dart';
import 'package:inc22/screens/home.dart';
import 'package:inc22/screens/test.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';

class SignInScreen extends StatefulWidget {
  // final String n;
  //final String p;
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  int _counter = 0;
  late StreamController<int> _events;
  bool session_timeout = false;

  @override
  initState() {
    super.initState();
    _events = new StreamController<int>();
    _events.add(60);
  }

  late Timer _timer;
  void _startTimer() {
    _counter = 60;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      //setState(() {
      (_counter > 0) ? _counter-- : _timer.cancel();
      //});
      print(_counter);
      _events.add(_counter);
    });
  }

  String qrData = " ";
  String nameValue = " ";
  String namev = " ";
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

  String value = "0";

  static String RANDOMWORDS(length) {
    String result = '';
    const characters =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    const charactersLength = characters.length;
    for (int i = 0; i < length; i += 1) {
      result += characters[Random().nextInt(62)];
    }
    print("///////////////////////////////////////////////" + result);
    return result;
  }

  String otp = "";
  void sendOtp() async {
    otp = RANDOMWORDS(5);
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('paid', isEqualTo: true)
        .where('email', isEqualTo: _emailTextController.value.text)
        .where('pid', isEqualTo: _qrdatafield.value.text)
        .get();
    name = querySnapshot.docs.first.get('name');
//     for (var doc in querySnapshot.docs) {
//   // Getting data directly
//   String name = doc.get('name');
//   print(name);

//   // Getting data from map
// }
    print(querySnapshot.size);
    if (querySnapshot.size == 0) {
      Fluttertoast.showToast(
        msg: "Invalid credentials",
      );
      return;
    }

    // Getting data directly
    /*if(name==null)
        Fluttertoast.showToast(
            msg: "user doesn't Exist",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
        );*/

    else {
      openDialog();
      String username = "incrideamail@gmail.com";
      String password = "Qwerty1234@";
      final smtpServer = gmail(username, password);
      final equivalentMessage = Message()
        ..from = Address(username, 'OTP Service 😀')
        ..recipients.add(const Address('deepthi15salian@gmail.com'))
        ..subject = 'OTP :: 😀 :: '
        ..text = 'Your otp is $otp';

      final sendReport2 = await send(equivalentMessage, smtpServer);
    }
  }

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'my_int_key';
    value = qrData;
    nameValue = name;
    wishAll = false;
    prefs.setString(key, value);
    prefs.setString("name_val", nameValue);
    print('saved $value');
    Navigator.push(context, ScreenAnimate(widget: home(), type: "homepage"));
  }

  bool verify() {
    String eotp = _otpTextController.value.text;
    if (otp == eotp) {
      setState(() {
        qrData = _qrdatafield.text;
      });
      _save();
      Navigator.of(context, rootNavigator: true).pop();
      return true;
    } else {
      Fluttertoast.showToast(
        msg: "Invalid OTP",
      );
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    // _read();
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
                          if (wishAll && value == "0") ...[
                            const SizedBox(
                              height: 130,
                            ),
                            // These children are only visible if condition is true
                            reusableTextField("Enter PID", Icons.person_outline,
                                false, _qrdatafield),
                            const SizedBox(
                              height: 20,
                            ),
                            reusableTextField("Enter Email", Icons.mail_outline,
                                false, _emailTextController),
                            const SizedBox(
                              height: 20,
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    glowing = true;
                                  });
                                  Future.delayed(
                                      const Duration(milliseconds: 300), () {
                                    sendOtp();
                                    setState(() {
                                      glowing = false;
                                    });
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 250),
                                  width:
                                      MediaQuery.of(context).size.width - 150,
                                  height: 50,
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 20),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30)),
                                      gradient: const LinearGradient(colors: [
                                        Color.fromARGB(255, 61, 71, 247),
                                        Color.fromARGB(255, 71, 182, 209)
                                      ]),
                                      boxShadow: glowing
                                          ? [
                                              const BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 61, 71, 247),
                                                spreadRadius: 1,
                                                blurRadius: 16,
                                                offset: Offset(-2, 0),
                                              ),
                                              const BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 71, 182, 209),
                                                spreadRadius: 1,
                                                blurRadius: 16,
                                                offset: Offset(2, 0),
                                              )
                                            ]
                                          : []),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'GENERATE QR',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20),
                                        )
                                      ]),
                                )),
                          ],
                        ],
                      ),
                    ])))));
  }

  bool rotp = false;
  void funcc() {
    session_timeout = false;
    rotp = false;
    Navigator.of(context, rootNavigator: true).pop();
    openDialog();
  }

  Future openDialog() => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            elevation: 15,
            backgroundColor: const Color.fromARGB(255, 36, 42, 56),
            actions: [
              if (!rotp) buil(context),
              GestureDetector(
                  onTapDown: (val) {
                    glowingsubmit = true;
                    setState(() {
                      print("happening");
                      glowingsubmit = true;
                    });
                    Future.delayed(const Duration(milliseconds: 300), () {
                      verify();
                      setState(() {
                        glowingsubmit = false;
                      });
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    width: 95,
                    height: 45,
                    margin: const EdgeInsets.fromLTRB(0, 10, 20, 20),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 61, 71, 247),
                          Color.fromARGB(255, 71, 182, 209)
                        ]),
                        boxShadow: glowingsubmit
                            ? [
                                const BoxShadow(
                                  color: Color.fromARGB(255, 61, 71, 247),
                                  spreadRadius: 1,
                                  blurRadius: 16,
                                  offset: Offset(-2, 0),
                                ),
                                const BoxShadow(
                                  color: Color.fromARGB(255, 71, 182, 209),
                                  spreadRadius: 1,
                                  blurRadius: 16,
                                  offset: Offset(2, 0),
                                )
                              ]
                            : []),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'SUBMIT',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ]),
                  )),
              TextButton(
                child: Text('Resend OTP'),
                onPressed: session_timeout ? () => funcc() : null,
              ),
            ],
            title: const Text('Enter OTP',
                style: TextStyle(
                    color: Color.fromARGB(255, 30, 118, 218),
                    fontFamily: "Montserrat")),
            content: reusableTextField("Enter OTP", Icons.add_alert_rounded,
                false, _otpTextController),
          ));

  Widget buil(BuildContext context) {
    return Countdown(
      seconds: 30,
      build: (BuildContext context, double time) => Text(
        time.toString(),
        // style: TextStyle(
        //             color: Colors.white,
        //             fontFamily: "Montserrat")
      ),
      interval: Duration(milliseconds: 100),
      onFinished: () {
        print('Timer is done!');
        otp = '123';
        session_timeout = true;
        rotp = true;
        Navigator.of(context, rootNavigator: true).pop();
        openDialog();
      },
    );
  }
}
