import 'dart:async';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimer() {
    return Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
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
