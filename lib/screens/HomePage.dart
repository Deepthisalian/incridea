
import 'package:flutter/material.dart';
import 'package:login_2/screens/event.dart';

class HomePage extends StatelessWidget {
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Events()));
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