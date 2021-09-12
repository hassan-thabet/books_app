import 'package:content/bloc/home/home_bloc.dart';
import 'package:content/bloc/register/register_bloc.dart';
import 'package:content/components/my_text_field.dart';
import 'package:content/components/normal_button.dart';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
import 'package:flutter/material.dart';

class Writer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: APP_MAIN_COLOR,
        title: Text('account Setting'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.settings),
                Text(
                  'account Setting',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First Name'),
                    MyTextField(
                      controller: RegisterBloc.get(context).firstNameController,
                      hint: HomeBloc.get(context).firstName.toString(),
                      iconData: Icons.person_add,
                      isSecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Last Name'),
                    MyTextField(
                      controller: RegisterBloc.get(context).lastNameController,
                      hint: HomeBloc.get(context).lastName.toString(),
                      iconData: Icons.person_add,
                      isSecure: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email'),
                    MyTextField(
                      controller: RegisterBloc.get(context).emailController,
                      hint: HomeBloc.get(context).email.toString(),
                      iconData: Icons.person_add,
                      isSecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('phone'),
                    MyTextField(
                      controller:
                          RegisterBloc.get(context).phoneNumberController,
                      hint: HomeBloc.get(context).phoneNumber.toString(),
                      iconData: Icons.phone,
                      isSecure: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
          NormalButton(
              label: 'Save',
              onTap: () {
                RegisterBloc.get(context).saveUserInfo(
                  RegisterBloc.get(context).firstNameController.text,
                  RegisterBloc.get(context).lastNameController.text,
                  RegisterBloc.get(context).phoneNumberController.text,
                );
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
