import 'package:content/bloc/signUp/signUp_bloc.dart';
import 'package:content/bloc/signUp/signUp_states.dart';
import 'package:content/components/normal_button.dart';
import 'package:content/components/logo.dart';
import 'package:content/components/my_text_field.dart';
import 'package:content/components/social_auth.dart';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'name.dart';


class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc,SignUpStates>(
      listener: ( context, state) {  },
      builder: (context, state) {
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
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 4, horizontal:12),
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
                                          controller: SignUpBloc.get(context).emailController,
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
                                        controller: SignUpBloc.get(context).passwordController,
                                        isSecure: SignUpBloc.get(context).visibility,
                                        visibilityOnTap: () {
                                          SignUpBloc.get(context).visibilityOnTap();
                                        },
                                        suffixIconData: (SignUpBloc.get(context).visibility == true)
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
                                        controller: SignUpBloc.get(context)
                                            .confirmPasswordController,
                                        isSecure:
                                            SignUpBloc.get(context).visibility,
                                        visibilityOnTap: () {
                                          SignUpBloc.get(context)
                                              .visibilityOnTap();
                                        },
                                        suffixIconData: (SignUpBloc.get(context)
                                                    .visibility ==
                                                true)
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            NormalButton(
                                label: 'Next',
                                onTap: () {
                                  SignUpBloc.get(context).userRegister(
                                    email: SignUpBloc.get(context)
                                        .emailController
                                        .text,
                                    password: SignUpBloc.get(context)
                                        .confirmPasswordController
                                        .text,
                                  );
                                  if (SignUpBloc.get(context)
                                      .emailController
                                      .text
                                      .isNotEmpty) {
                                    SignUpBloc.get(context).saveUserEmail(
                                        SignUpBloc.get(context)
                                            .emailController
                                            .text);
                                  }

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Name()));
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            SocialAuth(googleOnTap: (){}, facebookOnTap: (){}),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Already have an account?'),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                  child: Text(
                                    'Login',
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

