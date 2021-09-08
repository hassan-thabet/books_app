import 'package:content/bloc/home/home_bloc.dart';
import 'package:content/bloc/home/home_states.dart';
import 'package:content/components/normal_button.dart';
import 'package:content/constants/app_colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'writer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
    return BlocConsumer<HomeBloc, HomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 130, //dimensions.height * 0.20,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                colors: <Color>[
                                  GRADIENT_START,
                                  GRADIENT_END,
                                ]),
                            borderRadius: BorderRadius.vertical(
                                bottom:
                                    Radius.elliptical(dimensions.width, 40)),
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 75,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                  radius: 70,
                                  backgroundColor: BACKGROUND_COLOR,
                                  child: (HomeBloc.get(context).userImage ==
                                          null)
                                      ? CircleAvatar(
                                          radius: 70,
                                          backgroundImage: AssetImage(
                                              'assets/images/user_placeholder.jpg'))
                                      : CircleAvatar(
                                          radius: 70,
                                          backgroundImage: NetworkImage(
                                              HomeBloc.get(context)
                                                  .userImage
                                                  .toString()),
                                        )),
                            ],
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: CircleAvatar(
                              backgroundColor: GRADIENT_END,
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.black,
                              ),
                              radius: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          /// first name from firebase
                          HomeBloc.get(context).firstName.toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          /// last name from firebase
                          ' ' + HomeBloc.get(context).lastName.toString(),
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                          AssetImage("assets/icons/correct.png"),
                          size: 20,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: APP_MAIN_COLOR),
                      child: Text(
                        'Writing',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    // Text(

                    //     /// email from firebase
                    //     HomeBloc.get(context).email.toString()),
                    // Text(

                    //     /// Phone number from firebase
                    //     HomeBloc.get(context).phoneNumber.toString()),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: Column(
                          children: [
                            ListTile(
                              subtitle: Text(
                                HomeBloc.get(context).email.toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                              leading: Icon(Icons.email),
                              title: Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black26),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.black45,
                                width: double.infinity,
                                height: 1,
                              ),
                            ),
                            ListTile(
                              subtitle: Text(
                                HomeBloc.get(context).phoneNumber.toString(),
                                style: TextStyle(color: Colors.black),
                              ),
                              leading: Icon(
                                Icons.phone,
                                color: Colors.blue,
                              ),
                              title: Text(
                                'phoneNumber',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black26),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.black26,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'settings',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black26),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.black45,
                                  width: double.infinity,
                                  height: 1,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'account settings',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'did you like it ?',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Connect with us',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Writer()));
                                },
                                child: Text(
                                  'Author settings',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    NormalButton(
                      label: 'Log out',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
