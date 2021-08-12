
import 'package:content/components/search_bar.dart';
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Browse extends StatelessWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: dimensions.height * 0.35,
            decoration: BoxDecoration(
              // color: APP_MAIN_COLOR,
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: <Color>
                  [
                    GRADIENT_START,
                    GRADIENT_END,
                  ]
              ),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(dimensions.width, 80)),
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: BACKGROUND_COLOR.withAlpha(1000),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/menu.svg",
                            width: 22,
                            height: 22,
                            color: APP_MAIN_COLOR,
                          ),
                        )
                    ),
                    Text(
                      "Hello , \nWhat would you like to read today ?",
                      style: TextStyle(
                        color: DARK_TEXT,
                        fontSize: 20 ,
                      ),
                    ),
                    SearchBar(),
                    Container(
                      width: dimensions.width,
                        height: dimensions.height * 0.36,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context,int index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: dimensions.width * 0.42,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFF5F5F5),
                                          blurRadius: 8,
                                          spreadRadius: 1,
                                          offset: Offset(1, 1),
                                        )
                                      ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'https://covers.feedbooks.net/item/4119726.jpg?size=large' ,
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ),
                              );
                            }
                        )
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
