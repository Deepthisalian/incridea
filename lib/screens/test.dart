import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//void main() => runApp(FireList());

class FireList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Listview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyList(),
    );
  }
}

/*class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int _upCounter = 0;
  int _downCounter = 0;
  var _newdata;
  var myDatabase = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebse Listview'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyList()),
              );
            },
            icon: Icon(Icons.multiline_chart),
          )
        ],
      ),
      // body: Center(
      //   child: Text(
      //       "Cloud Firestore contains this sentence:\nFetch Attemp: $_downCounter\nData: $_datafromfirestore"),
      // ),
      body: StreamBuilder(
        stream: myDatabase.collection('Events').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            Center(
              child: Text("\nCaught an error in the firebase thingie... :| "),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text("\nHang On, We are building your app !"),
            );
          } else {
            var mydata = snapshot.data;
            print(mydata);
            return Center(
              child: Text(
                  //"Cloud Firestore contains this sentence:\nFetch Attempt: $_downCounter\nData: $_newdata"),
                  "inside child"),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _downCounter++;
          });
        },
        child: Icon(Icons.cloud_download),
        tooltip: 'Download Data',
      ),
    );
  }
}*/

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Firestore"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Events").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) return new Text('${snapshot.error}');
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasError)
                return Center(child: Text('Error: ${snapshot.error}'));
              if (!snapshot.hasData) return Text('No data finded!');
              /*return Card(
                child: SingleChildScrollView(
                  child: Column(
                    children:
                    snapshot.data.documents.map((DocumentSnapshot document){
                        return new Text(document['data']);
                      }).toList()
                  ),
                ),
              );*/
              return Card(
                child: Column(
                  children: <Widget>[
                    ListView(
                      shrinkWrap: true,
                     
                            children: [Text(
                              "Name",
                              style: TextStyle(fontSize: 18.0),
                            )],
                      /*children: snapshot.data.documents.map(
                        (DocumentSnapshot document) {
                          return new ListTile(
                            title: new Text(document['data']),
                          );
                        },
                      ).toList(),*/
                    ),
                  ],
                ),
              );
          }
        },
      ),
    );
  }
}