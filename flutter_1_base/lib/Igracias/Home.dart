import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_1_base/Igracias/Login_I.dart';

class Home extends StatelessWidget {
Color btnColor = const Color.fromRGBO(145, 9, 9, 1);
Color boxYellow = Color.fromRGBO(255, 175, 89, 1);
final List<Container> myList = List.generate(
  6, (index) {
    return Container(
      color: Color.fromARGB(
        255, 
        Random().nextInt(256), 
        Random().nextInt(256), 
        Random().nextInt(256),
      ),
    );
  }
);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.fromLTRB(33, 80, 33, 0),
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      width: 90,
                      height: 18,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("images/igracias/logo_igracias.png"),
                      ),
                    ),
                    Container(
                      width: 75,
                      height: 23,
                      margin: EdgeInsets.all(0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: ((context) => Login())
                            )
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.white),

                        ),
                        child: Text(
                          "Logout",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: btnColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 24, 0, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 280,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                textAlign: TextAlign.left,
                                "Hallo",
                                style: TextStyle(
                                  
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Amartya Maulana",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Selasa 14 Maret 2023",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: Icon(Icons.notifications_none_outlined)
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 108,
                  decoration: BoxDecoration(
                    color: boxYellow,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          width: double.infinity,
                          child: Text(
                            "Jadwal saat ini",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 3),
                              width: 20,
                              height: 20,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("images/igracias/buku.png"),
                                ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Sistem Informasi Geografis",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 3),
                              width: 20,
                              height: 20,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("images/igracias/bangunan.png"),
                                ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "IOT-105",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage("images/igracias/jam.png"),
                                ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "07.30 - 10.30",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 90,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      width: 40,
                                      height: 40,
                                      child: Image(
                                        image: AssetImage("images/igracias/jam.png"),
                                        fit: BoxFit.cover,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber,
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );;
  }
}