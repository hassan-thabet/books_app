import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
                                backgroundImage: AssetImage(
                                    'assets/images/user_placeholder.jpg')),
                          ),
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
                      'Eehab ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'El-Masry',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Text('Reader'),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.edit_outlined),
                    title: Text(
                      'Edit account',
                      style: TextStyle(fontSize: 20),
                    ),
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.edit_outlined),
                    title: Text(
                      'Edit account',
                      style: TextStyle(fontSize: 20),
                    ),
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.edit_outlined),
                    title: Text(
                      'Edit account',
                      style: TextStyle(fontSize: 20),
                    ),
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.edit_outlined),
                    title: Text(
                      'Edit account',
                      style: TextStyle(fontSize: 20),
                    ),
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.edit_outlined),
                    title: Text(
                      'Edit account',
                      style: TextStyle(fontSize: 20),
                    ),
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
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
