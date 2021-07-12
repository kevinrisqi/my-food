// ignore: import_of_legacy_library_into_null_safe
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_food/shared/theme.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
            HomePage(),
            Center(child: Text('Notification Page'),),
            Center(child: Text('Favorite Page'),),
            Center(child: Text('Profile Page'),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
        },

        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: mainColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
            activeColor: mainColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
            activeColor: mainColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: mainColor,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
