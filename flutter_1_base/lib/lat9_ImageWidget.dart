import 'package:flutter/material.dart';

class Lat9 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.network("https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA", fit: BoxFit.cover,),
            // child: Image(
            //   fit: BoxFit.cover,
            //   image: NetworkImage("https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA"),
            //   image: AssetImage("images/image.jpg"),
            // ),
          ),
        ),
      )
    );
  }
}