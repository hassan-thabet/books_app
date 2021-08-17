import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//بص يسطا انا بصراحة معرف اي دي بس البروبلم ما رحتش غير كدا

// ignore: non_constant_identifier_names
Widget ButtonStart(
    {
      // ignore: non_constant_identifier_names
      Function = Function,
      // ignore: non_constant_identifier_names
      String TextButton = '',
      Color color = APP_MAIN_COLOR,
      Color textcolor = Colors.white}) =>
    MaterialButton(
      onPressed: Function,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                TextButton,
                style: TextStyle(fontSize: 22, color: textcolor),
              ),
            )),
      ),
    );