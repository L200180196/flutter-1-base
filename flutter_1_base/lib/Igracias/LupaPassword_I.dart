import 'package:flutter/material.dart';
import 'Login_I.dart';

class LupaPassword extends StatelessWidget {

  Color btnColor = const Color.fromRGBO(145, 9, 9, 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(33, 50, 32, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Lupa Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 50,
                )
              ],          
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 41, 0, 27),
              child: Text(
                "Silahkan masukan email institusi anda, request reset password akan diteruskan ke SISFO.",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(229, 229, 229, 5),
                  contentPadding: EdgeInsets.only(left: 30),
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                  hintText: "Email",
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
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 40,
              color: btnColor,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "AJUKAN",
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
      )
    );
  }
}