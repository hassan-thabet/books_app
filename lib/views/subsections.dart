import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'book.dart';

class Subsections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 700,
        elevation: 00,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'new books',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              width: dimensions.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    width: dimensions.width * 0.40,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Book()));
                      }, //معلم هون خليت الدوسة ع الكتاب نفسو
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            'https://covers.feedbooks.net/item/4119726.jpg?size=large',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name The Book',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
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
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: dimensions.width * 0.55,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Flating',
                                      style: TextStyle(color: Colors.black54)),
                                  Text(
                                    '4.4',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Pages',
                                      style: TextStyle(color: Colors.black54)),
                                  Text(
                                    '310',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Downloads',
                                      style: TextStyle(color: Colors.black54)),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
