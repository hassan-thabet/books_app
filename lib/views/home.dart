import 'package:content/bloc/home/home_bloc.dart';
import 'package:content/constants/app_colors.dart';
import 'package:content/views/tabs/browse.dart';
import 'package:content/views/tabs/favorites.dart';
import 'package:content/views/tabs/notifications.dart';
import 'package:content/views/tabs/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }

  final List<Widget> _screens = [
    Browse(),
    Notifications(),
    Favorites(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    HomeBloc.get(context).getUserData();
    return Scaffold(
      body: _screens.elementAt(currentTab),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab,
        selectedItemColor: SELECTED_ICONS,
        unselectedItemColor: UNSELECTED_ICONS,
        onTap: (value) {
          _onItemTapped(currentTab);
          setState(() => currentTab = value);
        },
        selectedLabelStyle: TextStyle(
          fontFamily: 'Georama',
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Georama',
        ),
        elevation: 16,
        items: [
          BottomNavigationBarItem(
            label: 'Browse',
            icon: SvgPicture.asset(
              "assets/icons/worldwide.svg",
              width: 24,
              height: 24,
              color: (currentTab == 0 ) ? SELECTED_ICONS : UNSELECTED_ICONS,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Notifications',
            icon: SvgPicture.asset(
              "assets/icons/alarm.svg",
              width: 24,
              height: 24,
              color: (currentTab == 1 ) ? SELECTED_ICONS : UNSELECTED_ICONS,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: SvgPicture.asset(
              "assets/icons/like.svg",
              width: 24,
              height: 24,
              color: (currentTab == 2 ) ? SELECTED_ICONS : UNSELECTED_ICONS,

            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset(
              "assets/icons/user.svg",
              width: 24,
              height: 24,
              color: (currentTab == 3 ) ? SELECTED_ICONS : UNSELECTED_ICONS,

            ),
          ),
        ],
      ),
    );
  }
}
