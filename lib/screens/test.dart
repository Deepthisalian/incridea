import 'package:flutter/material.dart';
import 'package:login_2/screens/details.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Item{
  String title;
  String longText;
  String imageUrl;
  Item({required this.title,required this.longText,required this.imageUrl});
}

class FirstScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FirstScreen> {
  List<Item> _itemList = [
    Item(title: "title1", longText: "longtext1", imageUrl: "https://picsum.photos/200/300"),
    Item(title: "tite2", longText: "longtext2", imageUrl: "https://picsum.photos/200/300"),
    Item(title: "tite3", longText: "longtext3", imageUrl: "https://picsum.photos/200/300"),
    Item(title: "tite4", longText: "longtext4", imageUrl: "https://picsum.photos/200/300"),
    Item(title: "tite5", longText: "longtext5", imageUrl: "https://picsum.photos/200/300")
  ];


  //List<Item> _itemList = [{name: capture the flag, completed: false, maxParticipants: 2}, {name: hogathon, completed: false, maxParticipants: 1}, {name: roadies, completed: false, maxParticipants: 1}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Events'),
        ),
        body: Center(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),
          itemCount: _itemList.length,
          itemBuilder: (context, index) {
            
            return GestureDetector(
                onTap: () {
                  showDialogFunc(context,  index);
                   
                  
                },
                child: Card(
                   semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/no_image.png'),
                                    fit: BoxFit.fill),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              _itemList[index].title,
                              
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    )
            
                )
                );
                //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
              },
        )));
  }
      showDialogFunc(context, index) {
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
            

                        /*final querySnapshot = await FirebaseFirestore.instance.collection("Events").get();
                        print(querySnapshot.size);
                         List studentsList = [];

                        for (var doc in querySnapshot.docs) {
                          // Getting data directly
                      
                          studentsList.add(doc.data());
                          String name = doc.get('name');
                          print(name);
                        }

                        print(studentsList);*/

                        //FireStoreDataBase {
                        


                          // Getting data from map
                          /*Map<String, dynamic> data = doc.data();
                          int age = data['age'];*/

                        /*final CollectionReference collectionRef =
                        FirebaseFirestore.instance.collection("events");
                        print("************************************************************************");

                        Future getData() async {
                        try {
                        //to get data from a single/particular document alone.
                        // var temp = await collectionRef.doc("<your document ID here>").get();

                        // to get data from all documents sequentially
                        await collectionRef.get().then((querySnapshot) {
                        for (var result in querySnapshot.docs) {
                        studentsList.add(result.data());
                        }
                        print(querySnapshot.size);
                        });


                        return studentsList;
                        } catch (e) {
                        debugPrint("Error - $e");
                        return e;
                        }*/
                        //getdata();
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
                  Text(_itemList[index].title),
                  Text(_itemList[index].longText),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
   
}


