import 'package:flutter/material.dart';

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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),

          itemBuilder: (BuildContext context, int index) {

            return Padding(
                padding: EdgeInsets.all(5),
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
                    )));

          },
        ));
  }

  /*Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/dp.jpeg"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),

            child: const ListTile(
              leading: Icon(Icons.album, size: 60),
              title: Text(
                  'Sonu Nigam',
                  style: TextStyle(fontSize: 30.0)
              ),
              subtitle: Text(
                  'Best of Sonu Nigam Music.',
                  style: TextStyle(fontSize: 18.0)
              ),
            ),
          ),
        ),
      ),
      /*child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),


            color: Colors.red,
            elevation: 10,
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  //leading: Icon(Icons.album, size: 60),

                  title: Text(
                      'Sonu Nigam',
                      style: TextStyle(fontSize: 30.0)
                  ),
                  subtitle: Text(
                      'Best of Sonu Nigam Music.',
                      style: TextStyle(fontSize: 18.0)
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                  ],
                ),
              ],
            ),
          ),*/

    );
  }*/
}

// ClipRRect(
//         borderRadius : BorderRadius.circular(25),
//         child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
//         child: Container(height: 250,width: 350,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black,),
//         child: openDialog(),) )
//       );