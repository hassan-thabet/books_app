import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SocialAuth extends StatelessWidget {

  final VoidCallback googleOnTap;
  final VoidCallback facebookOnTap;

  SocialAuth({
    required this.googleOnTap,
    required this.facebookOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            padding:
            EdgeInsets.only(right: 4, left: 12),
            onPressed: googleOnTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black26,
                  width: 1,
                ),
                color: Colors.transparent,
              ),
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue with ',
                          style: TextStyle(
                              fontSize: 12,
                              color: DARK_TEXT
                          ),
                        ),
                        Image.asset(
                          'assets/icons/google.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            padding:
            EdgeInsets.only(right: 12, left: 4),
            onPressed: facebookOnTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black26,
                  width: 1,
                ),
                color: Colors.transparent,
              ),
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue with ',
                          style: TextStyle(
                              fontSize: 12,
                              color: DARK_TEXT),
                        ),
                        Image.asset(
                          'assets/icons/facebook.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
