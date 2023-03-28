import 'package:flutter/material.dart';
import 'LupaPassword_I.dart';
import 'Home.dart';

class Login extends StatelessWidget {
  Color btnColor = const Color.fromRGBO(145, 9, 9, 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 91),
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 58),
                  width: 217,
                  height: 43,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("images/igracias/logo_igracias.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 31,left: 33), 
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login to your Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(32, 0, 33, 21),
                  child: const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 229, 229, 5),
                      contentPadding: EdgeInsets.only(left: 30),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                      hintText: "Nomor Induk Mahasiswa",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(32, 0, 33, 16),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 229, 229, 5),
                      contentPadding: EdgeInsets.only(left: 30,),
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: Colors.white,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 32),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => LupaPassword())
                        )
                      );
                    }, 
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(27, 40, 23, 23),
                  width: double.infinity,
                  height: 62,
                  color: btnColor,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => Home())
                        )
                      );
                    },
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),
                    ),
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