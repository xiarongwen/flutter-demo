import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class MyState extends StatefulWidget{
  @override
  My createState() => new My();
}
class MyPages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: new Column(
        children: <Widget>[
          Container(
            child:MyState(),
          ),
          Container(
            child: Conetents2(),
          ),
        ],
      ),
    );
  }
}
//轮播组件
class My extends State<MyState>{
  int bannerStats = 1;
  void IndexChanged(int index){
    if(index<=3){
        setState(() {
        bannerStats = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          child: new Swiper(
            itemCount: 3,
            autoplay: true,
            duration:300,
            onIndexChanged:IndexChanged ,
            itemBuilder: (BuildContext context, int index){
              return Image.asset('images/${bannerStats}.jpeg');
            },
          ),
        ),
      ],
    );
  }
}
//内容组件
class Conetents2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Text('demo1',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}