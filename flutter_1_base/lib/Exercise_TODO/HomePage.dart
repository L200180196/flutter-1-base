import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> mylist = [
    {
      "favColor" : ["Black", "Red", "Amber", "Blue","Black", "Red", "Amber", "Blue"]
    },
  ];

  Color buttonColor = const Color.fromRGBO(80, 194, 201, 1);
  Color bgColor = Color.fromRGBO(229, 229, 229, 5);
  bool statCB = false;
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
            height: 400,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  blurStyle: BlurStyle.outer,
                  spreadRadius: 0.1
                )
              ],
              color: bgColor,
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
                        child: IconButton(
                          iconSize: 30,
                          onPressed: () {}, 
                          icon: Icon(
                            Icons.add_circle_outline_rounded, 
                            color: buttonColor
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 21),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 300,
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: statCB, 
                              onChanged: (value){
                                setState(() {
                                  statCB = !statCB;
                                });
                              }
                            ),
                            Text("Cook Rice and Chicken at 10 am")
                          ],
                        )
                      ],
                    )
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