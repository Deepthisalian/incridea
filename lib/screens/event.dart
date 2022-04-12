import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Card Example')),
        backgroundColor: Colors.yellow,
        body: MyCardWidget(key: null,),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {

  const MyCardWidget({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {

    return Scaffold(
    
          
          body: GridView.builder(
          
          itemCount: 10,
          //itemCount: studentsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),

          itemBuilder: (BuildContext context, int index) {

            return Padding(
                padding: EdgeInsets.all(5),
                child: InkWell(
                    onTap: () {
                      print("Click event on Container");
                      showDialogFunc(context);
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
                              "Name",
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    )
            )
                ),
            );

          },
        )
        
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
                      onPressed: () async {

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
                ],
              ),
            ),
          ),
        );
      },
    );
  }



}