import 'package:content/components/normal_button.dart';
import 'package:content/components/logo.dart';
import 'package:content/components/my_text_field.dart';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'name.dart';

class Singup extends StatefulWidget {
  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool scurte = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_MAIN_COLOR,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Logo(),
            SizedBox(
              height: 60,
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: BACKGROUND_COLOR),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Create new account',
                          style: TextStyle(fontSize: 26, color: DARK_TEXT),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 24),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: APP_MAIN_COLOR.withAlpha(100),
                                blurRadius: 4,
                                offset: Offset(1, 2),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 10),
                                child: MyTextField(
                                    hint: "Email",
                                    iconData: Icons.email_outlined,
                                    controller: emailController,
                                    isSecure: false),
                              ),
                              Divider(
                                height: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 14, bottom: 10, right: 0),
                                child: MyTextField(
                                  hint: "Password",
                                  iconData: Icons.lock_outline,
                                  controller: passwordController,
                                  isSecure: scurte,
                                  visibilityOnTap: () {
                                    setState(() {
                                      scurte = !scurte;
                                    });
                                  },
                                  suffixIconData: (scurte == true)
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              Divider(
                                height: 2,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 14, bottom: 10, right: 0),
                                child: MyTextField(
                                  hint: "Confirm Password",
                                  iconData: Icons.lock_outline,
                                  controller: passwordController,
                                  isSecure: scurte,
                                  visibilityOnTap: () {
                                    setState(() {
                                      scurte = !scurte;
                                    });
                                  },
                                  suffixIconData: (scurte == true)
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ],
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
                                      builder: (context) => Name()));
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
