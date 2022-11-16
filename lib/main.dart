import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  List<String> _array = [];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, i){
      return new ListTile(title: new Text("2 в степени $i = ${pow(2,i)}"));
    });
  }
}

void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(body: new Center(child: new MyBody(),))
    )
);
