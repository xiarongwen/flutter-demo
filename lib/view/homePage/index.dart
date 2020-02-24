import 'package:flutter/material.dart';

class HomeIndex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:Container(
          child: new Text('demo1',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
    );
  }
}