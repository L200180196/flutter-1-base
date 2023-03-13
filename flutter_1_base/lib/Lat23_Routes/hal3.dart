import 'package:flutter/material.dart';

class Hal3 extends StatelessWidget {
  static const nameRoute = '/photo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Foto'),
        leading: Container(),
      ),
      body: const Center(
        child: Text(
          "Halaman Foto", 
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}