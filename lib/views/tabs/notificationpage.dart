import 'package:content/constants/app_colors.dart';
import 'package:content/views/tabs/profileSpecial.dart';
import 'package:flutter/material.dart';

import '../book.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        elevation: 1,
        backgroundColor: APP_MAIN_COLOR,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileSpecial()));
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.mixbanat.com/wp-content/uploads/2020/09/%D8%B5%D9%88%D8%B1-%D8%A8%D9%86%D8%A7%D8%AA-%D8%A8%D9%86%D8%B6%D8%A7%D8%B1%D8%A9-13.jpg'),
                  radius: 30,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'sara ahmad',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        width: 5,
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
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: APP_MAIN_COLOR),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                              'https://covers.feedbooks.net/item/4119726.jpg?size=large'),
                        ),
                        Column(
                          children: [
                            Text(
                              'Name The Book',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Name The Reading',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    'A new book has been published by the author: Sarah AhmedInformation about the book',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.run_circle),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Book()));
                          },
                          child: Text(
                            'go to book..',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('to share:'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/icons/facebook.png'),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/icons/facebook.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
