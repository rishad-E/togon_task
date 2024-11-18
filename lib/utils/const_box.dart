import 'package:flutter/material.dart';

SizedBox wBox = const SizedBox(width: 5);
SizedBox wMBox = const SizedBox(width: 10);
SizedBox hBox = const SizedBox(height: 5);
SizedBox hMBox = const SizedBox(height: 10);
SizedBox shrinked = const SizedBox.shrink();

Widget prefferedBox({double? height,double? width}){
  return SizedBox(height:height ,width: width,);
}