import 'package:flutter/material.dart';
import 'view/index.dart';
void main() => runApp(MyApp());



class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title:'Demo',
      home: new IndexState(),
    );
  }
}