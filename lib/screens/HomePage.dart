import 'package:flutter/material.dart';
import 'package:inc22/check.dart';
import 'package:inc22/reusable_widgets/animation.dart';
import 'package:inc22/screens/scanner.dart';
import 'package:inc22/screens/test.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var glowingevent = false;
  var glowingquiz = false;
  var glowingmap = false;
  var glowingscanner = false;
  @override
  Widget build(BuildContext context) {
    done = false;
    present = true;

    geteid();
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background-center.png"),
                  fit: BoxFit.fitWidth,
                  opacity: 0.9),
            ),
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        20, MediaQuery.of(context).size.height * 0.1, 20, 0),
                    child: Column(children: <Widget>[
                      Image(
                          image: const AssetImage('assets/images/logo.png'),
                          width: MediaQuery.of(context).size.width * .7),
                      //logoWidget("assets/images/Font Black.jpg"),
                      //image: DecorationImage(image:new AssetImage("assets/images/logo.jpg"), fit: BoxFit.cover,opacity: 0.8),

                      Column(children: [ 
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                glowingevent = true;
                              });
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                Navigator.push(
                                    context,
                                    ScreenAnimate(
                                        widget: FirstScreen(),
                                        type: "homepage"));
                                setState(() {
                                  glowingevent = false;
                                });
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              width: MediaQuery.of(context).size.width - 150,
                              height: 50,
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 61, 71, 247),
                                    Color.fromARGB(255, 71, 182, 209)
                                  ]),
                                  boxShadow: glowingevent
                                      ? [
                                          const BoxShadow(
                                            color: Color.fromARGB(
                                                255, 61, 71, 247),
                                            spreadRadius: 1,
                                            blurRadius: 16,
                                            offset: Offset(-2, 0),
                                          ),
                                          const BoxShadow(
                                            color: Color.fromARGB(
                                                255, 71, 182, 209),
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
                                      'Events',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                glowingquiz = true;
                              });
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => FirstScreen()));
                                setState(() {
                                  glowingquiz = false;
                                });
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              width: MediaQuery.of(context).size.width - 150,
                              height: 50,
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 61, 71, 247),
                                    Color.fromARGB(255, 71, 182, 209)
                                  ]),
                                  boxShadow: glowingquiz
                                      ? [
                                          const BoxShadow(
                                            color: Color.fromARGB(
                                                255, 61, 71, 247),
                                            spreadRadius: 1,
                                            blurRadius: 16,
                                            offset: Offset(-2, 0),
                                          ),
                                          const BoxShadow(
                                            color: Color.fromARGB(
                                                255, 71, 182, 209),
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
                                      'Quiz',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                glowingmap = true;
                              });
                              Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => FirstScreen()));
                                setState(() {
                                  glowingmap = false;
                                });
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              width: MediaQuery.of(context).size.width - 150,
                              height: 50,
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 61, 71, 247),
                                    Color.fromARGB(255, 71, 182, 209)
                                  ]),
                                  boxShadow: glowingmap
                                      ? [
                                          const BoxShadow(
                                            color: Color.fromARGB(
                                                255, 61, 71, 247),
                                            spreadRadius: 1,
                                            blurRadius: 16,
                                            offset: Offset(-2, 0),
                                          ),
                                          const BoxShadow(
                                            color: Color.fromARGB(
                                                255, 71, 182, 209),
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
                                      'Map',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    )
                                  ]),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                                onTap: () {
                                  setState(() {
                                    glowingscanner = true;
                                  });
                                  Future.delayed(
                                      const Duration(milliseconds: 300), () {
                                    Navigator.push(
                                        context,
                                        ScreenAnimate(
                                            widget: const QrScanner(),
                                            type: "homepage"));
                                    setState(() {
                                      glowingscanner = false;
                                    });
                                  });
                                },
                                child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 250),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                150,
                                        height: 50,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30),
                                                    bottomRight:
                                                        Radius.circular(30)),
                                            gradient:
                                                const LinearGradient(colors: [
                                              Color.fromARGB(255, 61, 71, 247),
                                              Color.fromARGB(255, 71, 182, 209)
                                            ]),
                                            boxShadow: glowingscanner
                                                ? [
                                                    const BoxShadow(
                                                      color: Color.fromARGB(
                                                          255, 61, 71, 247),
                                                      spreadRadius: 1,
                                                      blurRadius: 16,
                                                      offset: Offset(-2, 0),
                                                    ),
                                                    const BoxShadow(
                                                      color: Color.fromARGB(
                                                          255, 71, 182, 209),
                                                      spreadRadius: 1,
                                                      blurRadius: 16,
                                                      offset: Offset(2, 0),
                                                    )
                                                  ]
                                                : []),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Scanner',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: "Montserrat",
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20),
                                              )
                                            ]),
                                      )
                                    )
                            
                      ])
                    ])))));
  }
}
