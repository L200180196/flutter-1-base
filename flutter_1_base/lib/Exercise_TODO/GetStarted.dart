import 'package:flutter/material.dart';
import 'package:flutter_1_base/Exercise_TODO/Register.dart';

class GetStarted extends StatelessWidget {
  Color buttonColor = const Color.fromRGBO(80, 194, 201, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 35),
                  width: double.infinity,
                  height: 165,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("images/asset1/shape.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: 172,
                  height: 170,
                  child: Image(
                    image: AssetImage("images/asset1/getstarted.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Center(
                    child: Text(
                      "Gets things done with TODO",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 480  ,
                  margin: EdgeInsets.only(bottom: 94),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum dictum tempus, interdum at dignissim metus. Ultricies sed nunc.",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 94),
                  width: 325,
                  height: 62,
                  color: buttonColor,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Register(),
                        )
                      );
                    },
                    child: Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
