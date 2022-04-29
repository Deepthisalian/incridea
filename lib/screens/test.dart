import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login_2/screens/details.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../reusable_widgets/reusable_widget.dart';

/*class Item{
  String title;
  String longText;
  String imageUrl;
  Item({required this.title,required this.longText,required this.imageUrl});
}


class Events{
  String name;
  bool completed;
  int maxparticipants;
  Events({required this.name,required this.completed,required this.maxparticipants});
}*/

class Item{
  String title;
  String Sdescription;
  String locatiom;
  String time;
  String Rounds;
  Item({required this.title,required this.Sdescription,required this.locatiom,required this.time, required this.Rounds});
}

class FirstScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
  List<Item>  _slectedItem=[];
  final List<List<Item>> _itemList0 = [[
    Item(title: "Lazzerina", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Paint & Pixel", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Watercraft Exhibition", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Talent House X", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Roadies", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Slow Bike Race", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Webbed", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Money Heist", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Intellectium", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Techtainment", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Engine Overhaul", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Shark Tank", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Better Be Letter", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Kalakaar", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Escape Room", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Sherlocked", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Respawn", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Capture The Flag ", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Duet Dance", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Aeromania", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
     ],
    [
    Item(title: "Lazzerina", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Paint & Pixel", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Watercraft Exhibition", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Robo Scoccer", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "General Quiz", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Improv", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Money Heist", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Desafio", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Roadies", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Stomp That", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Couture", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Riff Off", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Bob The Builder", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Da Vinci", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Thinking Cap", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Wired", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Webbed", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Vibe", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Code Studio", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Prove Us Wrong", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Techtainmet", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Bridge It", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Shutter Up", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Escape Room", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Better Be Letter", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "MockPress", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
     ],

     [
    Item(title: "Lazzerina", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Paint & Pixel", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Watercraft Exhibition", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Wired", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Vibe", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "ROBO RACE", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "RIFF OFF", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Navarasa", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Roadies", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Battle Of Bands", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Talent House X", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "MAD Ads", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Panchatantram", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Prathibimb", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Desafio", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Shark Tank", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Web Piracy", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Vocal Twist", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Burn & Run", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time'),
    Item(title: "Khamosh", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Bridge It", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Bob the Builder", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Perplex", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Code Studio", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Webbed", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Digital Art", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Shutter Up", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Mission Impossible", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time")
     ],

     [
    Item(title: "Lazzerina", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Paint & Pixel", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Watercraft Exhibition", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Melas Quiz", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Roadies", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "JAM", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Auto Expo", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Robowars", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Hogathon", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: "time"),
    Item(title: "Perplex", Sdescription: "Sdescription", locatiom: "locatiom", Rounds: "Rounds", time: 'time')
     ],


     


     ];

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
                 Container(
          alignment: FractionalOffset.topRight,
          child: GestureDetector(child: Icon(Icons.clear,color: Colors.blue,),

          onTap: (){
            Navigator.pop(context);
          }),),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text(_slectedItem[index].title),
                  Text(_slectedItem[index].Sdescription),
                                    Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                      child: Text('Show More', style: TextStyle(fontSize: 20.0),),
                    
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                    
                      onPressed: ()  {
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen(item: _slectedItem[index], key: null,),)
                  );
                        ;}
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

class _MyHomePageState extends State<FirstScreen> {
  int currentIndex = 0;
   List Screens=[];
  _MyHomePageState(){
    Screens=[
    Center(
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),
          itemCount: _itemList0[0].length,
          
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
                              _itemList0[0][index].title,
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 18.0,),
                            )),
                      ],
                    )
            
                )
                );
                //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
              },
        ),
        ),
        ],),),
     Center(
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),
          itemCount: _itemList0[1].length,
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
                              _itemList0[1][index].title,
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    )
            
                )
                );
                //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
              },
        ),
        ),
        ],),),

        Center(
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),
          itemCount: _itemList0[2].length,
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
                              _itemList0[2][index].title,
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    )
            
                )
                );
                //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
              },
        ),
        ),
        ],),),
    

    Center(
       child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(

            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 8.0 / 8.0,
            crossAxisCount: 2,
          ),
          itemCount: _itemList0[3].length,
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
                              _itemList0[3][index].title,
                              style: TextStyle(fontSize: 18.0),
                            )),
                      ],
                    )
            
                )
                );
                //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
              },
        ),
        ),
        ],),),
  ];
  }
  
  @override
  Widget build(BuildContext context) {
     _slectedItem = _itemList0[currentIndex];
    return Scaffold(
        appBar: AppBar(
          title: Text('Events'),
          centerTitle: true,
          actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: ()async {
                showSearch(context: context, delegate: eventSearch());
              },
            )
          ],
        ),
        body: Screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Day 1',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Day 2',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Day 3',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Day 4',
            backgroundColor: Colors.red,
          ),
          
        ],)
        );
  }
     
}
class eventSearch extends SearchDelegate {
  @override

   List<Item> recentCities = [];

late Set<String> suggests;
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
         IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
              showSuggestions(context);
            }
          },
        )
      ];

  @override
  Widget buildResults(BuildContext context)=>buildSuggestions(context);

  @override
  Widget buildSuggestions(BuildContext context) {
     final suggestions = query.isEmpty
        ? recentCities
        : _slectedItem.where((city) {
            final cityLower = city.title.toLowerCase();
            final queryLower = query.toLowerCase();
            return cityLower.startsWith(queryLower);
          }).toList();
          if(suggestions.isEmpty) {
            print(suggestions);
            return Center(child: Text("Oops, Not our Event"),);
          }
          return buildSuggestionsSuccess(suggestions);
  }
    Widget buildSuggestionsSuccess(List<Item> suggestions) => ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index].title;
        
          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);
          if(suggestions.isEmpty) {
                   return Container();
          } else {
            return ListTile(
            onTap: () {
              int ind=0;
              query = suggestion.toString();
              print(queryText+remainingText);
              for(int i=0;i<_slectedItem.length;i++){
                  if(_slectedItem[i].title==(queryText+remainingText)){
                      ind=i;
                  }
              }
               showDialogFunc(context, ind);
            },
            title: RichText(
              text: TextSpan(
                text: queryText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: remainingText,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
          }
        },
    );
}
