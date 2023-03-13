import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';

class Lat19 extends StatelessWidget {
  final List<Container> myList = List.generate(
    90, (index) {
      return Container(
        color: Color.fromARGB(
          255, 
          Random().nextInt(256), 
          Random().nextInt(256), 
          Random().nextInt(256),
        ),
      );
    }
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
        ),
        // body: GridView(
        //   padding: EdgeInsets.all(5),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 3/4,
        //   ),
        //   children: myList,
        // ),
        body: GridView.count(
          crossAxisCount: 6,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(5),
          children: myList,
        ),
        // body: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder),
      ),
    );
  }
}