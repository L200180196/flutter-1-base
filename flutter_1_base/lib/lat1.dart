import 'package:flutter/material.dart';

class Lat1 extends StatelessWidget{
  final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("My Apps"),
        ),
        body: ListView.separated(
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              height: 300,
              color: myColor[index],
            );
          }, 
          separatorBuilder: (context, index) {
            return Container(
              height: 5,
              color: Colors.black,
            );
          }, 
          itemCount: 4)
      ),
    );
  }
}