import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'notificationpage.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: APP_MAIN_COLOR,
        title: Text('Notifications'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
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
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Row(
                        children: [
                          Container(
                            width: 150,
                            child: Text(
                              'A new book has been published by the author: Sarah AhmedInformation about the book',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('12'),
                              Text(':'),
                              Text('10'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
