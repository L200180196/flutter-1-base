import 'package:flutter/material.dart';
import 'package:flutter_1_base/Exercise_TODO/HomePage.dart';
import 'package:flutter_1_base/Exercise_TODO/Register.dart';

class SignIn extends StatelessWidget {
  Color buttonColor = const Color.fromRGBO(80, 194, 201, 1);
  Color bgColor = Color.fromRGBO(229, 229, 229, 5);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
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
                  margin: EdgeInsets.only(bottom: 12),
                  child: Center(
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 33),
                  width: 250,
                  height: 206,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("images/asset1/signin.png"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(27, 0, 23, 21),
                  child: const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 229, 229, 5),
                      contentPadding: EdgeInsets.only(left: 30),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(27, 0, 23, 25),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 229, 229, 5),
                      contentPadding: EdgeInsets.only(left: 30),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: ((context) => SignIn())
                    //   )
                    // );
                  }, 
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: buttonColor,
                      fontSize: 14,
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(27, 29, 23, 23),
                  width: double.infinity,
                  height: 62,
                  color: buttonColor,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: ((context) => HomePage())
                        )
                      );
                    },
                    child: Text(
                      "Sign In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ? ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: ((context) => Register())
                            )
                          );
                        }, 
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: buttonColor,
                            fontSize: 14,
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}