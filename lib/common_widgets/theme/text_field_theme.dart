import 'package:flutter/material.dart';

class TTextFormFieldTheme{
  static InputDecorationTheme lightInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: Color(0xff272727) ,
      floatingLabelStyle: TextStyle(color: Color(0xff272727)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Color(0xff272727),
        ),
      )
  );

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: Color(0xFFFFE082) ,
      floatingLabelStyle: TextStyle(color: Color(0xFFFFE082)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Color(0xFFFFE082),
        ),
      )
  );
}