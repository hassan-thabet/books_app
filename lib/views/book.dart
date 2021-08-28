import 'dart:ui';

import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              iconSize: 30,
              icon: Icon(Icons.add_circle_outline_rounded),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            iconSize: 30,
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          backgroundColor: APP_MAIN_COLOR,
          elevation: 0,
        ),
        backgroundColor: APP_MAIN_COLOR,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    color: APP_MAIN_COLOR,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: Offset(1, 1),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image.network(
                                'https://covers.feedbooks.net/item/4119726.jpg?size=large',
                                height: 250,
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Name The Book',
                          style: TextStyle(
                            fontSize: 30,
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
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Flating',
                                      style: TextStyle(color: Colors.white70)),
                                  Text(
                                    '4.4',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Pages',
                                      style: TextStyle(color: Colors.white70)),
                                  Text(
                                    '310',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Downloads',
                                      style: TextStyle(color: Colors.white70)),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.read_more,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'READ BOOK',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  color: Colors.white,
                                  height: 55,
                                  width: 3,
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.download,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Download',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(90)),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Overview of the book :',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'ncsjdvnds adjfbvcmnvio sdhgtikmb,okd,v  sdhvuismdv;lsd sdvmc vojsdv sfv.cmvkuyv ',
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.black,
                          width: double.infinity,
                          height: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Eehab',
                                  style: TextStyle(fontSize: 27),
                                ),
                                Text(
                                  'Rate this book',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black54),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 35,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 35,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 35,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 35,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 35,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.black,
                          width: double.infinity,
                          height: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Post by:',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MaterialButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/icons/facebook.png'),
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/icons/facebook.png'),
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                'assets/icons/facebook.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.black,
                          width: double.infinity,
                          height: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'You may also like :',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'https://covers.feedbooks.net/item/4119726.jpg?size=large',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
