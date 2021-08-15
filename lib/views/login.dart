import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
import 'package:content/views/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                style: TextStyle(fontSize: 50, color: Colors.white),
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
                        height: 20,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 30),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Name',
                            labelText: 'user Name',
                            prefixIcon: Icon(Icons.email)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  scurte = !scurte;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye)),
                        ),
                        obscureText: scurte,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'did you forget your password',
                            style: TextStyle(color: DARK_TEXT),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: APP_MAIN_COLOR),
                          child: Center(
                              child: Text(
                            'Login',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('If you do not have an account :'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Singup()));
                            },
                            child: Text(
                              'Create an account',
                              style: TextStyle(color: APP_MAIN_COLOR),
                            ),
                          )
                        ],
                      ),
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
