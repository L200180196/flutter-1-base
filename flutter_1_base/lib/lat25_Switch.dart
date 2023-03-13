import 'package:flutter/material.dart';

class Lat25 extends StatefulWidget {
  const Lat25({super.key});

  @override
  State<Lat25> createState() => _Lat25State();
}

class _Lat25State extends State<Lat25> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              activeColor: Colors.amber[700],
              activeTrackColor: Colors.black,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.amber[700],
              
              // activeThumbImage: AssetImage(""),
              // inactiveThumbImage: AssetImage(""),
              value: statusSwitch, 
              onChanged: (value) {
                setState(() {
                  statusSwitch = !statusSwitch;
                });
                print(statusSwitch);
              },
            ),
            // if (statusSwitch == true)
            //   Text(
            //     "ONLINE",
            //     style: TextStyle(
            //       fontSize: 50,
            //     ),
            //   )
            // else
            //   Text(
            //     "OFFLINE",
            //     style: TextStyle(
            //       fontSize: 50,
            //     ),
            //   )
            Text(
                (statusSwitch == true) ? "ONLINE" : "OFFLINE",
                style: TextStyle(
                  fontSize: 50,
                ),
              )
          ],
        ),
      ),
    );
  }
}