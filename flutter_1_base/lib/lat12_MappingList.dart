import 'package:flutter/material.dart';
import 'package:flutter_randomcolor/flutter_randomcolor.dart';

class Lat12 extends StatelessWidget {
  final List<Map<String, dynamic>> mylist = [
    {
      "Name" : "Ame",
      "Age"  : 22,
      "favColor" : ["Black", "Red", "Amber", "Blue","Black", "Red", "Amber", "Blue"]
    },
    {
      "Name" : "Lana",
      "Age"  : 25,
      "favColor" : ["Yellow", "Green", "Amber", "Blue"]
    },
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ID Apps'),
        ),
        body: ListView(
          children: mylist.map((data) {
            List myFavcolor = data["favColor"];
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${data['Name']}"),
                            Text(data["Age"].toString()),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myFavcolor.map((color){
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                            padding: EdgeInsets.all(10),
                            color: Colors.cyan,
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}