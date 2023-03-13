import 'package:flutter/material.dart';

class Lat20 extends StatefulWidget {
  @override
  State<Lat20> createState() => _Lat20State();
}

class _Lat20State extends State<Lat20> {
  String data = "No Input Here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Klik Hapus");
          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                title: Text("Confirm"),
                content: Text("Are you sure delete this ?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        data = "True";
                      });
                      print("Klik Yes");
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        data = "False";
                      });
                      print("Klik No");
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No"),
                  ),
                ],
              );
            }
          ).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}