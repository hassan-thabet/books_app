import 'dart:async';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
//import 'package:content/views/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'book.dart';
import 'login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    read() async {
      final preferences = await SharedPreferences.getInstance();
      final key = 'is_auth';
      final value = preferences.get(key) ?? null;
      if (value == true) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    }

    Timer(Duration(seconds: 2), () => read());

    return Scaffold(
      backgroundColor: APP_MAIN_COLOR,
      body: Center(
        child: Text(
          'B O O K',
          style: TextStyle(
              fontSize: 60, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
