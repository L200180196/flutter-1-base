import 'package:flutter/material.dart';

class Lat15 extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
    icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      icon: Icon(Icons.delete),
    ),
    Tab(
      icon: Icon(Icons.account_balance),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.amber,
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.all(5),
              // if indicator ada, then 3 default indicator not function
              indicator: BoxDecoration(
                color: Color.fromARGB(255, 22, 208, 255),
                border: Border(
                  top: BorderSide(
                    color: Colors.amber,
                    width: 5
                  )
                )
              ),
              tabs: myTab,
              ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Container(
                  child: Image.network("https://picsum.photos/id/1/200/300"),
                ),
              ),
              Center(
                child: Container(
                  child: Image.network("https://picsum.photos/id/3/200/300"),
                ),
              ),
              Center(
                child: Container(
                  child: Image.network("https://picsum.photos/id/2/200/300"),
                ),
              ),
            ]
            ),
        ),
      ),
    );
  }
}