import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // RotationTransition(
          //   turns: AlwaysStoppedAnimation(270 / 360),
          //   child: Text(
          //     'b'.toUpperCase(),
          //     style: TextStyle(
          //         fontSize: 60,
          //         color: Colors.white,
          //         fontWeight: FontWeight.w500,
          //         letterSpacing: 12),
          //   ),
          // ),
          Text(
            'boo'.toUpperCase(),
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 12),
          ),
          RotationTransition(
            turns: AlwaysStoppedAnimation(10 / 360),
            child: Text(
              'k'.toUpperCase(),
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 12),
            ),
          ),
        ],
      ),
    );
  }
}
