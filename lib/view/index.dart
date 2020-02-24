import 'package:flutter/material.dart';
import 'homePage/index.dart';
import 'My/index.dart';

class IndexState extends StatefulWidget{
  @override
  Index createState() => new Index();
}

class Index extends State<IndexState>{
  int _currentIndex = 0;
  final _NavBarColor = Colors.blue;
  final _pagesList = [ HomeIndex(),MyState()];

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar:new AppBar(
        title: new Text('demo'),
      ) ,
      body:new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: _pagesList[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(

          items: [
            BottomNavigationBarItem(
                title: Text(
                  '首页',
                  style: TextStyle(color: _NavBarColor ),
                ),

                icon: Icon( Icons.home,color:_NavBarColor ,)
            ),
            BottomNavigationBarItem(
                title: Text(
                  '我的',
                  style: TextStyle(color: _NavBarColor ),
                ),
                icon: Icon(Icons.domain,color: _NavBarColor,)
            )
          ],
        type: BottomNavigationBarType.fixed,//类型为 fixed
        onTap: _change,
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
      ),
    );
  }
  void _change(int index){
    print(index);
    setState(() {
      _currentIndex = index;
    });
  }
}
