import 'dart:io';
import 'package:content/bloc/register/register_bloc.dart';
import 'package:content/bloc/register/register_states.dart';
import 'package:content/components/logo.dart';
import 'package:content/components/my_text_field.dart';
import 'package:content/components/normal_button.dart';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'interests.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterStates>(
      listener: (context, state) {
        if (state is NameLoadingState) {
          EasyLoading.show(
            status: 'loading...',
            maskType: EasyLoadingMaskType.black,
          );
        }
        if (state is NameErrorState) {
          EasyLoading.showError('Failed with Error',
              maskType: EasyLoadingMaskType.black);
        }
        if (state is NameSuccessState) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Interests()));
          EasyLoading.showSuccess(
            'The last step',
            maskType: EasyLoadingMaskType.black,
          );
        }
      },
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
                                (RegisterBloc.get(context).pickedImage == null)
                                    ? CircleAvatar(
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                            'assets/images/user_placeholder.jpg'))
                                    : CircleAvatar(
                                        radius: 60,
                                        backgroundImage: FileImage(File(
                                            RegisterBloc.get(context)
                                                .pickedImage!
                                                .path))),
                                Positioned(
                                  bottom: -10,
                                  right: -30,
                                  child: MaterialButton(
                                    shape: CircleBorder(),
                                    elevation: 4.0,
                                    onPressed: () {
                                      RegisterBloc.get(context).pickUserImage();
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
                                          controller: RegisterBloc.get(context)
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
                                        controller: RegisterBloc.get(context)
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
                                        controller: RegisterBloc.get(context)
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
                                  RegisterBloc.get(context).saveUserInfo(
                                    RegisterBloc.get(context)
                                        .firstNameController
                                        .text,
                                    RegisterBloc.get(context)
                                        .lastNameController
                                        .text,
                                    RegisterBloc.get(context)
                                        .phoneNumberController
                                        .text,
                                  );
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