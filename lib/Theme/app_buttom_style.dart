import 'package:flutter/material.dart';

abstract class AppButtonStyle{
  static final ButtonStyle linkButtom = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Color(0xff01B4E4)),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );
}