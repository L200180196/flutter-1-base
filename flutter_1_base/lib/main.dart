import 'package:flutter/material.dart';
import 'package:flutter_1_base/Exercise_TODO/GetStarted.dart';
import 'package:flutter_1_base/Lat22_Navigation/page1.dart';
import 'package:flutter_1_base/Lat23_Routes/hal1.dart';
import 'package:flutter_1_base/Lat23_Routes/hal2.dart';
import 'package:flutter_1_base/Lat23_Routes/hal3.dart';
import 'package:flutter_1_base/lat14_AppBar.dart';
import 'package:flutter_1_base/lat19_GridViewWidget.dart';
import 'package:flutter_1_base/lat20_DialogWidget.dart';
import 'package:flutter_1_base/lat24_Drawer.dart';
import 'package:flutter_1_base/lat25_Switch.dart';
import 'lat1.dart';
import 'lat9_ImageWidget.dart';
import 'lat10_ExtractWidget.dart';
import 'lat11_StatefulWidget.dart';
import 'lat12_MappingList.dart';
import 'lat13_DateFormat.dart';
import 'lat15_TabBarWidget.dart';
import 'lat16_TextFieldFitur.dart';
import 'lat18_TextFieldControl.dart';
import 'lat21_DismissibleWidget.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: GetStarted(),
      // initialRoute: Hal1.nameRoute,
      // routes: {
      //   Hal1.nameRoute: (context) => Hal1(),
      //   Hal2.nameRoute: (context) => Hal2(),
      //   Hal3.nameRoute: (context) => Hal3(),
      // },
    )
  );
}

