/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_2/screens/scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/main.dart';

//import 'package:firebase_auth/firebase_auth.dart';

String eName = "";
String pid = "";
int max = 0;

Future checkOrg() async {
  pid = 'inc-22-01';
  final orgCheck = await FirebaseFirestore.instance
      .collection('users')
      .where('pid', isEqualTo: pid)
      .where('org', isEqualTo: true)
      .get();
  if (orgCheck.docs.isNotEmpty) {
    //present = true;
    return true;
  }
}

Future geteid() async {
  final prefs = await SharedPreferences.getInstance();
  final eventName = await FirebaseFirestore.instance
      .collection('org_events')
      .where('pid', arrayContains: pid)
      .get();
  for (var doc in eventName.docs) {
    eName = doc.reference.id;
    await prefs.setString('eName', eName);
    final eventData =
        await FirebaseFirestore.instance.collection('events').doc(eName).get();
    max = eventData['max_p'];
    await prefs.setInt('max_p', max);
    int rounds = eventData['rounds'];
    await prefs.setInt('rounds', rounds);
    int judge = eventData['judge'];
    await prefs.setInt('judge', judge);
    int criteria = eventData['criteria'];
    await prefs.setInt('criteria', criteria);
    npid = eventData['pids'];
  }
}*/