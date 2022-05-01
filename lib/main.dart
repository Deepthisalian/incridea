import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inc22/check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:inc22/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool present = false;
bool checked = true;
var test="";
void main() async {
  //1

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    if (checked) {
      checkOrg().then((result) {
        setState(() {
          present = result;
          checked = false;
        });
      });
    }

    print(present);
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Ubuntu'),
      home: home(),
      //home: GeneratePage(),
    );
  }
}
