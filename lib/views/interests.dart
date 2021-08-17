import 'package:content/components/buttonStart.dart';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
import 'package:flutter/material.dart';

class Interests extends StatefulWidget {
  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  bool color = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_MAIN_COLOR,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'B O O K',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'What is your interest?',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 70,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              color = true;
                            });
                          },
                          child: CircleAvatar(
                            child: Text(
                              'Writing',
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: color ? addColor : Colors.white,
                            radius: 65,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 70,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              color = false;
                            });
                          },
                          child: CircleAvatar(
                            child: Text(
                              'Reader',
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: color ? Colors.white : addColor,
                            radius: 65,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonStart(
                    color: Colors.white,
                    textcolor: APP_MAIN_COLOR,
                    TextButton: 'Finish',
                    Function: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
