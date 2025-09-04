import 'dart:ui';

import 'package:flutter/material.dart';

import 'color.dart';

const String suwannaphum = 'Superhuman';
 class AppStyleFont{
  static boldFont(){
    return TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.bold,
      fontFamily: suwannaphum
    );

}
  static regularFont(){
    return TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: suwannaphum
    );

}
  static titleButtW(){
    return TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: suwannaphum
    );

  }
  static titleButtB(){
    return TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: suwannaphum
    );

  }
  static subTitleButtB(){
    return TextStyle(
        color: Colors.black54,
        fontSize: 15,
        fontFamily: suwannaphum
    );

  }
  static titleButtP(){
    return TextStyle(
        color: primaryColor,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        fontFamily: suwannaphum
    );

  }
  static titlleFont(){
    return TextStyle(
        color: primaryColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: suwannaphum
    );

  }
  static titlleItemFontB(){
    return TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: suwannaphum
    );

  }
  static titlleItemFontW(){
    return TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: suwannaphum
    );

  }
}
