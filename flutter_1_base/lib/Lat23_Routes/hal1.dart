import 'package:flutter/material.dart';
import 'hal2.dart';

class Hal1 extends StatelessWidget {
  static const nameRoute = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Satu'),
      ),
      body: const Center(
        child: Text(
          "Halaman Pertama", 
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return Page2();
          //     },
          //   ),
          // );
          Navigator.of(context).pushNamed(Hal2.nameRoute);
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}