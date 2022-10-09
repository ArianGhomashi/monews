import 'package:flutter/material.dart';
import 'package:monews/constants/constants.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monews/screens/add_screen.dart';
import 'package:monews/screens/discover_screen.dart';
import 'package:monews/screens/home_screen.dart';
import 'package:monews/screens/profile_screen.dart';
import 'package:monews/screens/save_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: redColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              activeIcon: Icon(Iconsax.user1),
              label: '1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.save_2),
              activeIcon: Icon(Iconsax.save_25),
              label: '2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.add_circle),
              activeIcon: Icon(Iconsax.add_circle5),
              label: '3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.discover),
              activeIcon: Icon(Iconsax.discover_14),
              label: '4',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              activeIcon: Icon(Iconsax.home_25),
              label: '5',
            ),
          ],
        ),
        body: getLayout()[_selectedIndex]);
  }

  List<Widget> getLayout() {
    return [
      ProfileScreen(),
      SaveScreen(),
      AddScreen(),
      DiscoverScreen(),
      HomeScreen(),
    ];
  }
}
