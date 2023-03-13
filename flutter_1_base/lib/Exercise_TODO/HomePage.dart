import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> mylist = [
    {
      "favColor" : ["Black", "Red", "Amber", "Blue","Black", "Red", "Amber", "Blue"]
    },
  ];
  Color buttonColor = const Color.fromRGBO(80, 194, 201, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 307,
            color: buttonColor,
            padding: EdgeInsets.only(bottom: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    image: DecorationImage(
                      image: AssetImage("images/image.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: Text(
                    "Welcome, Alexander Graham",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 27,bottom: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Tasks List",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 26),
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 21),
                        child: Text(
                          "Tasks List"
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 26),
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: Icon(Icons.add_circle_outline_rounded),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}