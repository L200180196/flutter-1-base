import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
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
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return Page2();
              },
            ),
          );
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}