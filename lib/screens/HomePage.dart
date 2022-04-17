
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_2/screens/event.dart';
import 'package:login_2/screens/newtest.dart';
import 'package:login_2/screens/test.dart';

class HomePage extends StatelessWidget {
  List studentsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(25),

          ),
          Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text('Scanner', style: TextStyle(fontSize: 20.0),),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
              },
            ),
          ),

          Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text('Event', style: TextStyle(fontSize: 20.0),),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () async {
                final querySnapshot = await FirebaseFirestore.instance.collection("Events").get();
                        print(querySnapshot.size);
        

                        for (var doc in querySnapshot.docs) {
                          // Getting data directly
                      
                          studentsList.add(doc.data());
                          String name = doc.get('name');
                          print(name);
                        }

                        //print(studentsList);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()
                    ));
              },
            ),
          ),

          Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text('Quiz', style: TextStyle(fontSize: 20.0),),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
              },
            ),
          ),

          Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text('Map', style: TextStyle(fontSize: 20.0),),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
              },
            ),
          ),


        ]
        )));
  }
}