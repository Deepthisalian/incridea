import 'package:flutter/material.dart';
import 'package:inc22/screens/details.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../reusable_widgets/animation.dart';

class Item {
  String title;
  String Sdescription;
  String locatiom;
  String time;
  String Rounds;
  Item(
      {required this.title,
      required this.Sdescription,
      required this.locatiom,
      required this.time,
      required this.Rounds});
}

class FirstScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  var glowingshow = false;
}

List<Item> _slectedItem = [];
final List<List<Item>> _itemList0 = [
  [
    Item(
        title: "Lazzerina",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Paint & Pixel",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Watercraft Exhibition",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Talent House X",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Roadies",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Slow Bike Race",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Webbed",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Money Heist",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Intellectium",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Techtainment",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Engine Overhaul",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Shark Tank",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Better Be Letter",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Kalakaar",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Escape Room",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Sherlocked",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Respawn",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Capture The Flag ",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Duet Dance",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Aeromania",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
  ],
  [
    Item(
        title: "Lazzerina",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Paint & Pixel",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Watercraft Exhibition",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Robo Scoccer",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "General Quiz",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Improv",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Money Heist",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Desafio",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Roadies",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Stomp That",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Couture",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Riff Off",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Bob The Builder",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Da Vinci",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Thinking Cap",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Wired",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Webbed",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Vibe",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Code Studio",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Prove Us Wrong",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Techtainmet",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Bridge It",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Shutter Up",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Escape Room",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Better Be Letter",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "MockPress",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
  ],
  [
    Item(
        title: "Lazzerina",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Paint & Pixel",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Watercraft Exhibition",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Wired",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Vibe",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "ROBO RACE",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "RIFF OFF",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Navarasa",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Roadies",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Battle Of Bands",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Talent House X",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "MAD Ads",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Panchatantram",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Prathibimb",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Desafio",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Shark Tank",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Web Piracy",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Vocal Twist",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Burn & Run",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time'),
    Item(
        title: "Khamosh",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Bridge It",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Bob the Builder",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Perplex",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Code Studio",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Webbed",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Digital Art",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Shutter Up",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Mission Impossible",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time")
  ],
  [
    Item(
        title: "Lazzerina",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Paint & Pixel",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Watercraft Exhibition",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Melas Quiz",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Roadies",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "JAM",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Auto Expo",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Robowars",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Hogathon",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: "time"),
    Item(
        title: "Perplex",
        Sdescription: "Sdescription",
        locatiom: "locatiom",
        Rounds: "Rounds",
        time: 'time')
  ],
];

class _MyHomePageState extends State<FirstScreen> {
  int currentIndex = 0;
  var glowingshow = false;
  List Screens = [];
  _MyHomePageState() {
    glowingshow = false;
    Screens = [
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 8.0 / 8.0,
                  crossAxisCount: 2,
                ),
                itemCount: _itemList0[0].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        showDialogFunc(context, index);
                      },
                      child: Card(
                          elevation: 10,
                          color: const Color.fromARGB(255, 71, 182, 209),
                          semanticContainer: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/no_image.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    _itemList0[0][index].title,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 36, 42, 56),
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0,
                                    ),
                                  )),
                            ],
                          )));
                  //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
                },
                padding: const EdgeInsets.all(5.0),
              ),
            ),
          ],
        ),
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 8.0 / 8.0,
                  crossAxisCount: 2,
                ),
                itemCount: _itemList0[1].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        showDialogFunc(context, index);
                      },
                      child: Card(
                          elevation: 10,
                          color: const Color.fromARGB(255, 71, 182, 209),
                          semanticContainer: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/no_image'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    _itemList0[1][index].title,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 36, 42, 56),
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0,
                                    ),
                                  )),
                            ],
                          )));
                  //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
                },
                padding: const EdgeInsets.all(5.0),
              ),
            ),
          ],
        ),
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 8.0 / 8.0,
                  crossAxisCount: 2,
                ),
                itemCount: _itemList0[2].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        showDialogFunc(context, index);
                      },
                      child: Card(
                          elevation: 10,
                          color: const Color.fromARGB(255, 71, 182, 209),
                          semanticContainer: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/no_image'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    _itemList0[2][index].title,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 36, 42, 56),
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0,
                                    ),
                                  )),
                            ],
                          )));
                  //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
                },
                padding: const EdgeInsets.all(5.0),
              ),
            ),
          ],
        ),
      ),
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 8.0 / 8.0,
                  crossAxisCount: 2,
                ),
                itemCount: _itemList0[3].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        showDialogFunc(context, index);
                      },
                      child: Card(
                          elevation: 10,
                          color: const Color.fromARGB(255, 71, 182, 209),
                          semanticContainer: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/no_image'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    _itemList0[3][index].title,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 36, 42, 56),
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0,
                                    ),
                                  )),
                            ],
                          )));
                  //child: Container(margin: EdgeInsets.all(20), child: Text(_itemList[index].title)));
                },
                padding: const EdgeInsets.all(5.0),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    _slectedItem = _itemList0[currentIndex];
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 36, 42, 56),
        appBar: AppBar(
          title: const Text('Events'),
          shadowColor: Colors.black,
          elevation: 15,
          backgroundColor: const Color.fromARGB(255, 61, 71, 247),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () async {
                  showSearch(context: context, delegate: eventSearch());
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: Screens[currentIndex],
        bottomNavigationBar: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.rectangle,

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
          ),
          padding: const EdgeInsets.all(12),

          ///configuration for SnakeNavigationBar.color
          snakeViewColor: const Color.fromARGB(255, 61, 71, 247),
          selectedItemColor: SnakeShape.circle == SnakeShape.indicator
              ? const Color.fromARGB(255, 61, 71, 247)
              : null,
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_one_outlined),
              label: 'Day 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined),
              label: 'Day 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined),
              label: 'Day 3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.looks_4_outlined),
              label: 'Day 4',
            ),
          ],
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
        ));
  }
}

showDialogFunc(context, index) {
  var glowingshow = false;
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 36, 42, 56),
                  spreadRadius: 3,
                  blurRadius: 16,
                  offset: Offset(-2, 0),
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 36, 42, 56),
                  spreadRadius: 3,
                  blurRadius: 16,
                  offset: Offset(2, 0),
                )
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Color.fromARGB(255, 36, 42, 56),
            ),
            padding: const EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                ),
                Container(
                  alignment: FractionalOffset.topRight,
                  child: GestureDetector(
                      child: const Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  _slectedItem[index].title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
                Text(
                  _slectedItem[index].Sdescription,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w300,
                      fontSize: 18),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: GestureDetector(
                      onTap: () {
                        glowingshow = true;
                        // setState(() {
                        //   glowingshow = true;
                        // });
                        Future.delayed(const Duration(milliseconds: 900), () {
                          Navigator.push(
                              context,
                              ScreenAnimate(
                                  widget: DetailScreen(
                                    item: _slectedItem[index],
                                    key: null,
                                  ),
                                  type: "homepage"));
                          // setState(() {
                          //   glowingshow = false;
                          // });
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width: MediaQuery.of(context).size.width - 250,
                        height: 30,
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 61, 71, 247),
                              Color.fromARGB(255, 71, 182, 209)
                            ]),
                            boxShadow: glowingshow
                                ? [
                                    const BoxShadow(
                                      color: Color.fromARGB(255, 61, 71, 247),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: Offset(-4, 0),
                                    ),
                                    const BoxShadow(
                                      color: Color.fromARGB(255, 71, 182, 209),
                                      spreadRadius: 1,
                                      blurRadius: 16,
                                      offset: Offset(2, 0),
                                    )
                                  ]
                                : []),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Show More',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ]),
                      )),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class eventSearch extends SearchDelegate {
  @override
  List<Item> recentCities = [];
  late Set<String> suggests;
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      hintColor: Colors.white,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
            headline6: const TextStyle(
              color: Colors.white,
              fontFamily: "Ubuntu",
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 61, 71, 247),

        //app bar color I wanted
      ),
    );
  }

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
              showSuggestions(context);
            }
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => buildSuggestions(context);

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentCities
        : _slectedItem.where((city) {
            final cityLower = city.title.toLowerCase();
            final queryLower = query.toLowerCase();
            return cityLower.startsWith(queryLower);
          }).toList();
    if (suggestions.isEmpty) {
      print(suggestions);
      return const Center(
        child: Text(
          "Oops, Not our Event",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
      );
    }
    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<Item> suggestions) => ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index].title;

          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);
          if (suggestions.isEmpty) {
            return Container();
          } else {
            return ListTile(
              onTap: () {
                int ind = 0;
                query = suggestion.toString();
                print(queryText + remainingText);
                for (int i = 0; i < _slectedItem.length; i++) {
                  if (_slectedItem[i].title == (queryText + remainingText)) {
                    ind = i;
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