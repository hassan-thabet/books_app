import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileSpecial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
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
                            bottom: Radius.elliptical(dimensions.width, 40)),
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
                            child: CircleAvatar(
                                radius: 70,
                                backgroundImage: NetworkImage(
                                    'https://www.mixbanat.com/wp-content/uploads/2020/09/%D8%B5%D9%88%D8%B1-%D8%A8%D9%86%D8%A7%D8%AA-%D8%A8%D9%86%D8%B6%D8%A7%D8%B1%D8%A9-13.jpg')),
                          ),
                        ],
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
                      'Sara ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Ahmad',
                      style: TextStyle(fontSize: 25),
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
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    // height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.edit_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'brief about me:',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'vlnnrohgvnsiagjbvpoerjfbj civh;ksjbjojhfbojasgbmptijb;kavo[sigr')
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(
                                width: 10,
                              ),
                              Text('SaraAhmad@gmail.com')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('01045549375')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.golf_course),
                              SizedBox(
                                width: 10,
                              ),
                              Text('View more books by the author'),
                              TextButton(
                                onPressed: () {},
                                child: Text('go to..'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
