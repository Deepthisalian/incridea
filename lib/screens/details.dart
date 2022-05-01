import 'package:flutter/material.dart';
import 'package:inc22/screens/test.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);
  //const DetailScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
      ),
      body: Center(
        child: Column(children: [
          Text(item.Sdescription),
          const Text("title")
          //Image.network(item.imageUrl,fit: BoxFit.fill,),
        ]),
      ),
    );
  }
}
