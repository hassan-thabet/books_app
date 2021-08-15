import 'package:content/views/login.dart';
import 'package:content/views/singup.dart';
import 'package:content/views/splash.dart';
import 'package:flutter/material.dart';

import 'constants/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Content - Download & Read Free Books',
      theme: ThemeData(
        fontFamily: 'Georama',
        scaffoldBackgroundColor: BACKGROUND_COLOR,
      ),
      home: Splash(),
    );
  }
}
