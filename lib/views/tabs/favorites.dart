import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../book.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          elevation: 0,
          title: Text(
            'FAVORITES',
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_book,
                color: Colors.black54,
              ),
              iconSize: 30,
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, int) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                height: 170,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Book()));
                  },
                  child: Row(
                    children: [
                      Container(
                        color: APP_MAIN_COLOR,
                        height: 150,
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://covers.feedbooks.net/item/4119726.jpg?size=large',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Name The Book',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'composing: ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                ),
                              ),
                              Text(
                                'Name The Reading',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: APP_MAIN_COLOR,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                  backgroundColor: APP_MAIN_COLOR,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.read_more,
                                        color: Colors.white,
                                      ))),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                  backgroundColor: APP_MAIN_COLOR,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ))),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                  backgroundColor: APP_MAIN_COLOR,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.download,
                                        color: Colors.white,
                                      )))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
