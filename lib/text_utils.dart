import 'package:flutter/material.dart';

class TextUtils extends Text{

  TextUtils(String text, {color: Colors.white, textScaleFactor:1.0, fontFamily:"Roboto" , fontWeight: FontWeight.bold, fontSize: 18.0}):
        super(
          text,
          textScaleFactor: textScaleFactor,
          textAlign: TextAlign.center,

          style: new TextStyle(color: color, fontFamily:fontFamily , fontWeight: fontWeight, fontSize: fontSize)

      );
}