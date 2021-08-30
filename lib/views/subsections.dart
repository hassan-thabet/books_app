import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'book.dart';

class Subsections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          leadingWidth: 700,
          elevation: 00,
          title: Text(
            'new books',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Card(
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Book()));
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 180,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network(
                                'https://covers.feedbooks.net/item/4119726.jpg?size=large',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name The Book',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: SELECTED_ICONS,
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
                                    color: APP_MAIN_COLOR,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.black45,
                                      size: 20,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
