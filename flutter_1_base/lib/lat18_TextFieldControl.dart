import 'package:flutter/material.dart';

class Lat18 extends StatefulWidget {
  @override
  State<Lat18> createState() => _Lat18State();
}

class _Lat18State extends State<Lat18> {
  final TextEditingController myController = TextEditingController();

  String onSubmit = "on Submit";
  String onChange = "On Change";
  String onEditingComplete = "On Editing Complete";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field Control'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    setState(() {
                      onChange = value;
                    });;
                  },
                  onSubmitted: (value) {
                    setState((){
                      onSubmit = value;
                    });
                  },
                  onEditingComplete: () {
                    print(myController.text);
                  },
                ),
                Text(onChange),
                Text(onSubmit),
                Text(onEditingComplete),

              ],
            ),
          ),
        ),
      )
    ); 
  }
}