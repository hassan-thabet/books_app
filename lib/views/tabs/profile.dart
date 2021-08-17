import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Center(
              child: Text(
                'B O O K',
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            height: dimensions.height * 0.35,
            decoration: BoxDecoration(
              // color: APP_MAIN_COLOR,
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: <Color>[
                    GRADIENT_START,
                    GRADIENT_END,
                  ]),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(dimensions.width, 80)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/3224344/pexels-photo-3224344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.orange[100],
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.black,
                      ),
                      radius: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 38,
                  ),
                  Text(
                    'Eehab',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Msre',
                    style: TextStyle(fontSize: 25),
                  ),
                  IconButton(
                      iconSize: 2,
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/pencil.png',
                        width: 23,
                      ))
                ],
              ),
              Text('Reader'),
            ],
          ),
        ],
      ),
    );
  }
}
