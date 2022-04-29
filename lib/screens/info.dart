/*import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_2/screens/check.dart';
import 'package:login_2/screens/HomePage.dart';
import 'package:login_2/screens/check.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'scanner.dart';

int c = 1;
List pids = [];
int crn = 1;
int rn = 1;
int jn = 1;
int cn = 1;

class AddUser extends StatelessWidget {
  String? pid;
  AddUser(this.pid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    Future read_data() async {
      if (done) {
        final prefs = await SharedPreferences.getInstance();
        final int? max = prefs.getInt('max_p');
        rn = prefs.getInt('rounds')!;
        jn = prefs.getInt('judge')!;
        crn = prefs.getInt('criteria')!;
      }
      done = true;
      if (c < max) {
        pids.add(pid);
        c++;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => qrscanner()));
      } else if (c == max) {
        pids.add(pid);
        final tCount = await FirebaseFirestore.instance
            .collection('events')
            .doc(eName)
            .get();
        cn = tCount['count'];
        bool r = addUserEvent(pids);
        if (r) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        }
      }
      
      throw {};
    }

    return TextButton(
      onPressed: () {
        read_data();
      },
      child: const Text.rich(TextSpan(text: "Ename", children: [
        TextSpan(
          text: "pids",
        )
      ])),
    );
  }
}

bool addUserEvent(List pids) {
  cn++;
  CollectionReference userE =
      FirebaseFirestore.instance.collection('user_events');
  userE.doc(eName).set({
    "participants": {
      "contestant-$cn": {
        "comments": "",
        "pids": FieldValue.arrayUnion(pids),
        "rounds": {
          for (int i = 1; i <= rn; i++)
            "round-$i": {
              "Total": 0,
              "Selected": false,
              for (int j = 1; j <= jn; j++)
                "J$j": {
                  for (int x = 1; x <= crn; x++) "C$x": "",
                },
            },
        },
      }
    }
  }, SetOptions(merge: true));
  pids.clear();
  c = 1;
  CollectionReference countUp = FirebaseFirestore.instance.collection('events');
  countUp.doc(eName).update({'count': cn});
  countUp.doc(eName).update({'pids': FieldValue.arrayUnion(npid)});
  return true;
}*/