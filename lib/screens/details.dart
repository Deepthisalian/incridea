import 'package:flutter/material.dart';
import 'package:login_2/screens/test.dart';


class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
      ),
      body: Center(
        child: Column(
          children:[
            Text(item.longText),
            Image.network(item.imageUrl,fit: BoxFit.fill,),
          ]
        ),
      ),
    );
  }
}