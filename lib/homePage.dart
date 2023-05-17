import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';
import 'package:instagram_ui/pages/camera.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///navigate around the bottom navbar
  var selectedIndex = 0;

  ///different pages to navigate to
  final List<Widget> children = [
    UserHome(),
    UserSearch(),
    UserCamera(),
    UserReels(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: 'Home', icon: FaIcon(FontAwesomeIcons.house)),
          BottomNavigationBarItem(
              label: 'Search', icon: FaIcon(FontAwesomeIcons.magnifyingGlass)),
          BottomNavigationBarItem(
              label: 'Camera', icon: FaIcon(FontAwesomeIcons.squarePlus)),
          BottomNavigationBarItem(
              label: 'Reels', icon: FaIcon(FontAwesomeIcons.circlePlay)),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: FaIcon(Icons.account_circle_outlined, size: 28)),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade600,
        showSelectedLabels: false,
      ),
    );
  }
}
