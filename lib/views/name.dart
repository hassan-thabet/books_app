import 'dart:io';

import 'package:content/bloc/signUp/signUp_bloc.dart';
import 'package:content/bloc/signUp/signUp_states.dart';
import 'package:content/components/logo.dart';
import 'package:content/components/my_text_field.dart';
import 'package:content/components/normal_button.dart';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'interests.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: APP_MAIN_COLOR,
          body: SafeArea(
            child: Column(
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
                              'Personal information',
                              style: TextStyle(fontSize: 26, color: DARK_TEXT),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Stack(
                              alignment: AlignmentDirectional.bottomStart,
                              children: [
                                (SignUpBloc.get(context).pickedImage == null)
                                    ? CircleAvatar(
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                            'assets/images/user_placeholder.jpg'))
                                    : CircleAvatar(
                                        radius: 60,
                                        backgroundImage: FileImage(File(
                                            SignUpBloc.get(context)
                                                .pickedImage!
                                                .path))),
                                Positioned(
                                  bottom: -10,
                                  right: -30,
                                  child: MaterialButton(
                                    shape: CircleBorder(),
                                    elevation: 4.0,
                                    onPressed: () {
                                      SignUpBloc.get(context).pickUserImage();
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: GRADIENT_END,
                                      child: Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.black54,
                                        size: 12,
                                      ),
                                      radius: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
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
                                          hint: "First name",
                                          iconData:
                                              Icons.person_outline_rounded,
                                          controller: SignUpBloc.get(context)
                                              .firstNameController,
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
                                        hint: "Last name",
                                        iconData: Icons.person_add_outlined,
                                        controller: SignUpBloc.get(context)
                                            .lastNameController,
                                        isSecure: false,
                                      ),
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
                                        hint: "Phone number",
                                        iconData: Icons.phone_iphone_rounded,
                                        controller: SignUpBloc.get(context)
                                            .phoneNumberController,
                                        isSecure: false,
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
                                  SignUpBloc.get(context).saveUserInfo(
                                    SignUpBloc.get(context)
                                        .firstNameController
                                        .text,
                                    SignUpBloc.get(context)
                                        .lastNameController
                                        .text,
                                    SignUpBloc.get(context)
                                        .phoneNumberController
                                        .text,
                                  );
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}