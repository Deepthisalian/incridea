
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_2/reusable_widgets/reusable_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //String qrData = "https://github.com/neon97";
  String qrData = "";
  bool valid=false;
  bool flag = false;
  bool wishAll=true;
  static late final Object;
  TextEditingController _qrdatafield = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _otpTextController = TextEditingController();

  EmailAuth emailAuth = new EmailAuth(sessionName: "login");

  String value = "0";
   _read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    value= prefs.getString(key)??"0";
    print(value);
  }

   static String RANDOMWORDS(length) {
    String result = '';
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    const charactersLength = characters.length;
    for (int i = 0; i < length; i += 1) {
      result += characters[Random().nextInt(62)];
    }
    print("///////////////////////////////////////////////"+result);
    return result;
  }



  String otp=RANDOMWORDS(5);
  void sendOtp() async {

    final querySnapshot = await FirebaseFirestore.instance
        .collection('Participants')
        .where('paid', isEqualTo: true)
        .where('email',isEqualTo: _emailTextController.value.text)
        //.where('pid',isEqualTo:_qrdatafield.value.text)
        .get();
    print(querySnapshot.size);
    if(querySnapshot.size == 0)
    {
      Fluttertoast.showToast(
                msg: "Invalid credentials",
              );
              return;
    }

   
      // Getting data directly
      /*String name = doc.get('name');
      if(name==null)
        Fluttertoast.showToast(
            msg: "user doesn't Exist",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
        );*/
      else{
          openDialog();
          String username="incrideamail@gmail.com";
          String password="Qwerty1234@";
          final smtpServer = gmail(username,password);
          final equivalentMessage = Message()
            ..from = Address(username, 'OTP Service 😀')
            ..recipients.add(Address('deepthi15salian@gmail.com'))
            ..subject = 'OTP :: 😀 :: '
            ..text = 'Your otp is ${otp}';

          final sendReport2 = await send(equivalentMessage, smtpServer);
        }

    

  }
  _save() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'my_int_key';
    value = qrData;
    wishAll=false;
    prefs.setString(key, value);
    print('saved $value');
  }

  bool verify() {
    String eotp=_otpTextController.value.text;
    if(otp==eotp){
      setState(() {
        qrData = _qrdatafield.text;
      });
      _save();
      Navigator.of(context).pop();
      return true;
    }
  else {
      Fluttertoast.showToast(
                 msg: "Invalid OTP",
               );
    }
    
    return false;
  }

  @override
  Widget build(BuildContext context) {
    _read();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image:new AssetImage("assets/images/bg_grey1.jpg"), fit: BoxFit.cover,opacity: 0.9),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20,0),
            child: Column(
              children: <Widget>[
                Image(image: AssetImage('assets/images/logo.png')
                ),
                //logoWidget("assets/images/Font Black.jpg"),
                //image: DecorationImage(image:new AssetImage("assets/images/logo.jpg"), fit: BoxFit.cover,opacity: 0.8),


            Column(
              children: [
                SizedBox(
                  height: 60,
                ),

                if(!wishAll || value!="0") ...[
                  QrImage(
                    //place where the QR Image will be shown
                    data: value,
                    size: 200,
                  ),
                ],
                if (wishAll && value=="0") ... [
                 // These children are only visible if condition is true
            reusableTextField("Enter PID", Icons.person_outline, false,
            _qrdatafield),
                  SizedBox(
                    height: 20,
                  ),
        reusableTextField("Enter Email", Icons.mail_outline, false,
            _emailTextController),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                    child: FlatButton(
                      padding: EdgeInsets.all(15.0),
                      onPressed: () async {
                        //firebase code
                        sendOtp();
                      },
                      child: Text(
                        "Generate QR",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 5.0),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  )
                ],
              ],
            ),





              ],

            ),

          ),

        ),
      ),
    );

  }
  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Enter OTP'),
        content: TextField(
            autofocus: true,
            controller: _otpTextController,
            decoration: InputDecoration(hintText: 'Enter OTP'),
        ),
        actions: [
          TextButton(
            child: Text('SUBMIT'),
            onPressed: verify,
          ),

        ],
      ),);



}

