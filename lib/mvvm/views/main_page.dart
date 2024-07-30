import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:training_session/mvvm/views/user_page.dart';

import '../../flutter/drawer_example.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  dynamic _selectedPageIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;
    _pages = [const UserPage(), const ProfilePage()];

    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  Future<bool> _onWillPop() async {
    if (_selectedIndex != 0) {
      setState(() {
        _selectedIndex = 0;
        _pageController.jumpToPage(_selectedIndex);
      });
      return false;
    } else {
      bool confirmExit = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Confirm Exit'),
          content: const Text('Are you sure you want to exit the app?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back(result: false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: true);
              },
              child: const Text('Yes'),
            ),
          ],
        ),
      );
      return confirmExit;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        if (!didPop) {
          bool canPop = await _onWillPop();
          if (!canPop) {
          } else {
            SystemNavigator.pop();
          }
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white10,
          selectedItemColor: Colors.blueAccent,
          unselectedIconTheme: const IconThemeData(
            color: Colors.lightBlueAccent,
          ),
          unselectedItemColor: Colors.lightBlueAccent,
          selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Colors.lightBlueAccent),
          unselectedLabelStyle: const TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 10,
              fontWeight: FontWeight.w500),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: _selectedIndex == 0 ? Colors.white : Colors.black,
              ),
              label: 'Users',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: _selectedIndex == 1 ? Colors.white : Colors.black,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
