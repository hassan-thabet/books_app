import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 220,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
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
                CircleAvatar(
                  radius: 88,
                  backgroundColor: BACKGROUND_COLOR,
                  child: CircleAvatar(
                      radius: 85,
                      backgroundImage:
                          AssetImage('assets/images/user_placeholder.jpg')),
                ),

                // Stack(
                //   alignment: AlignmentDirectional.bottomEnd,
                //   children: [
                //
                //     MaterialButton(
                //       onPressed: () {},
                //       child: CircleAvatar(
                //         backgroundColor: GRADIENT_END,
                //         child: Icon(
                //           Icons.camera_alt_rounded,
                //           color: Colors.black,
                //         ),
                //         radius: 20,
                //       ),
                //     ),
                //   ],
                // ),
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
    );
  }
}