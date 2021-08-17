import 'package:content/bloc/login/login_bloc.dart';
import 'package:content/bloc/login/login_states.dart';
import 'package:content/components/logo.dart';
import 'package:content/components/my_text_field.dart';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
import 'package:content/views/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginStates>(
      listener: (context, state) {},
      builder: (context, Object? state) {
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
                              'Welcome Back , Log-in',
                              style: TextStyle(fontSize: 26, color: DARK_TEXT),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 24),
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
                                        controller: LoginBloc.get(context)
                                            .emailController,
                                        isSecure: false),
                                  ),
                                  Divider(
                                    height: 2,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        left: 14,
                                        bottom: 10,
                                        right: 0),
                                    child: MyTextField(
                                      hint: "Password",
                                      iconData: Icons.lock_outline,
                                      controller: LoginBloc.get(context)
                                          .passwordController,
                                      isSecure:
                                          LoginBloc.get(context).visibility,
                                      visibilityOnTap: () {
                                        LoginBloc.get(context)
                                            .visibilityOnTap();
                                      },
                                      suffixIconData:
                                          (LoginBloc.get(context).visibility ==
                                                  true)
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forget password? ',
                                  style: TextStyle(color: DARK_TEXT),
                                ),
                                InkWell(
                                  child: Text(
                                    'Reset',
                                    style: TextStyle(
                                      color: GRADIENT_END,
                                    ),
                                  ),
                                  onTap: () {
                                    // TODO: Remember password method
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: APP_MAIN_COLOR),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: MaterialButton(
                                    padding:
                                        EdgeInsets.only(right: 4, left: 16),
                                    onPressed: () {},
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
                                        EdgeInsets.only(right: 16, left: 4),
                                    onPressed: () {},
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
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Don\'t have an account ?'),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Singup()));
                                  },
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(color: GRADIENT_END),
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
          ),
        );
      },
    );
  }
}
