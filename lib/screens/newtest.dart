
/*import 'package:flutter/material.dart';
import 'package:login_2/screens/details.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NoteList extends StatelessWidget {
  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        
        stream: db.collection('Events').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
            return ListView(
              
             children: snapshot.data!.docs.map((doc) {
                return Card(
                  child: ListTile(
                    title: Text(doc.get("name")),
                    onTap: (){
                      showDialogFunc(context);
                    },
                    
                  ),
                );
              }).toList(),
            );
        },
      ),
    );
  }
        showDialogFunc(context) {
      return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              height: 320,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                      child: Text('Show More', style: TextStyle(fontSize: 20.0),),
                    
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                    
                      onPressed: ()  {
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen(item: _itemList[index], key: null,)),
                  );
                      
                        ;}

                        //}
                        //},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                      child: Text('Register', style: TextStyle(fontSize: 20.0),),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                      },
                    ),
                  ),
                //Text(doc.get('name')),
                 // Text(_itemList[index].longText),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/*class Example extends StatelessWidget {
   var listOfWidgets = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: //number of items ,
      itemBuilder: (BuildContext context, int index) => StreamBuilder(

          stream: Firestore.instance
              .collection("cart")
              .where("Item$index.quantity", isGreaterThanOrEqualTo: 1)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) return new Text("There is no expense");
                   return ...listOfWidgets;
              }),
    );
  }

  getExpenseItems(AsyncSnapshot<QuerySnapshot> snapshot) {

    var item = snapshot.data.documents
        .map((doc) => new ListTile(
            title: new Text(doc["Item$index.Name"]),
            subtitle: new Text(doc["Item$index.quantity"])))
        .toList();
    listOfWidgets.add(item);
  }
}*/
*/
