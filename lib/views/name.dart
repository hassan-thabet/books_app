import 'package:content/components/normal_button.dart';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'interests.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_MAIN_COLOR,
      body: Column(
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
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'What is your name ?',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: ' First name',
                          labelText: 'First name',
                          labelStyle: TextStyle(color: APP_MAIN_COLOR),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'last name',
                        labelText: 'last name',
                        labelStyle: TextStyle(color: APP_MAIN_COLOR),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NormalButton(
                        label: 'Next',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Interests()));
                        }),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}