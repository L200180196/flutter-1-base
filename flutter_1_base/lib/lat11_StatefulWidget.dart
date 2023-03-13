import 'package:flutter/material.dart';

class Lat11 extends StatefulWidget {
  @override
  State<Lat11> createState() => _Lat11State();
}

class _Lat11State extends State<Lat11> {
  int counter = 1;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 70 + double.parse(counter.toString()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (counter!=1){
                      setState(() {
                        counter--;
                      });
                    }
                  }, 
                  child: Icon(Icons.remove)
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  }, 
                  child: Icon(Icons.add)
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}