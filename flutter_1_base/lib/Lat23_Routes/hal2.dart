import 'package:flutter/material.dart';
import 'package:flutter_1_base/Lat23_Routes/hal1.dart';
import 'package:flutter_1_base/Lat23_Routes/hal3.dart';

class Hal2 extends StatelessWidget {
  static const nameRoute = '/halamanTengah';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Tengah'),
        leading: Container(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Halaman Tengah", 
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed(Hal1.nameRoute);
                  }, 
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed(Hal3.nameRoute);
                  }, 
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}