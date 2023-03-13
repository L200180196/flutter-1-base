import 'package:flutter/material.dart';

class Lat16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fitur TextField'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              // Fitur
              // autocorrect: false,
              // autofocus: false,
              // enableSuggestions: true,
              // enableInteractiveSelection: false,
              // enabled: false,
              // obscureText: false,
              // obscuringCharacter: '=',
              // keyboardType: TextInputType.phone,
              // readOnly: false,

              // Dekorasi
              cursorColor: Colors.red,
              // cursorHeight: 30,
              // cursorWidth: 30,
              // cursorRadius: Radius.circular(5),
              showCursor: true,

              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.none,

              style: TextStyle(
                color: Colors.amber,
                fontSize: 35,
              ),

              decoration: InputDecoration(
                // fillColor: Colors.red,
                // filled: true,
                // prefixText: 'Password',
                prefixIcon: Icon(Icons.key),
                suffixIcon: Icon(Icons.remove_red_eye),
                // suffixIcon: IconButton(
                //   onPressed: () {}, 
                //   icon: Icon(Icons.remove_red_eye)
                // ),
                icon: Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.blue,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    color: Colors.green,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 0, 140),
                  )
                ),
                hintText: 'Input your Username',
                hintStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.red,
                )
              ),
            ),
            ),
        ),
      ),
    );
  }
}