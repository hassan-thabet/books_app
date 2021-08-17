import 'package:content/components/button_start.dart';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'name.dart';

class Singup extends StatefulWidget {
  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  bool scurte = true;
  @override
  void initState() {
    super.initState();
  }

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
            height: 90,
          ),
          Expanded(
            flex: 2,
            child: Container(
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
                        height: 10,
                      ),
                      Text(
                        'Singup',
                        style: TextStyle(fontSize: 30),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Email Address',
                            labelText: 'Email',
                            labelStyle: TextStyle(color: APP_MAIN_COLOR),
                            prefixIcon: Icon(
                              Icons.email,
                              color: APP_MAIN_COLOR,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: TextStyle(color: APP_MAIN_COLOR),
                          prefixIcon: Icon(Icons.lock, color: APP_MAIN_COLOR),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  scurte = !scurte;
                                });
                              },
                              icon: (scurte == true)
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                        ),
                        obscureText: scurte,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'confirm password',
                          labelText: 'confirm password',
                          labelStyle: TextStyle(color: APP_MAIN_COLOR),
                          prefixIcon: Icon(Icons.lock, color: APP_MAIN_COLOR),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  scurte = !scurte;
                                });
                              },
                              icon: (scurte == true)
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                        ),
                        obscureText: scurte,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //عملت يسطا الكمبونت للبوتن بس بص  علي لو عايز برضك تصيف حاجة
                      ButtonStart(
                          Function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Name()));
                          },
                          TextButton: 'Next')
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}