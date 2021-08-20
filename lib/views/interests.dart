import 'package:content/bloc/register/register_bloc.dart';
import 'package:content/bloc/register/register_states.dart';
import 'package:content/components/logo.dart';
import 'package:content/components/transparent_button.dart';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Interests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterStates>(
      listener: (context, state) {
        if (state is CreateLoadingState) {
          EasyLoading.show(
            status: 'loading...',
            maskType: EasyLoadingMaskType.black,
          );
        }
        if (state is CreateErrorState) {
          EasyLoading.showError('Failed with Error',
              maskType: EasyLoadingMaskType.black);
        }
        if (state is CreateSuccessState) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));

          EasyLoading.showSuccess(
            'Done , Your account has been created successfully',
            maskType: EasyLoadingMaskType.black,
          );
        }
      },
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What is your interest?',
                        style: TextStyle(fontSize: 26, color: DARK_TEXT),
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
                                  RegisterBloc.get(context).interestsOnTap();
                                },
                                child: CircleAvatar(
                                  child: Text(
                                    'Writing',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  backgroundColor: RegisterBloc.get(context)
                                              .selectedInterests ==
                                          false
                                      ? addColor
                                      : Colors.white,
                                  radius: 69,
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
                                  RegisterBloc.get(context).interestsOnTap();
                                },
                                child: CircleAvatar(
                                  child: Text(
                                    'Reading',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  backgroundColor: RegisterBloc.get(context)
                                              .selectedInterests ==
                                          true
                                      ? addColor
                                      : Colors.white,
                                  radius: 69,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: TransparentButton(
                            label: 'Finish',
                            onTap: () {
                              RegisterBloc.get(context).createUser();
                            }),
                      ),
                    ],
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
