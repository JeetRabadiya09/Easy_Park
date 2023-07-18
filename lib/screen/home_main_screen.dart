import 'package:easy_park/screen/home%20_screen.dart';
import 'package:easy_park/screen/login_screen.dart';
import 'package:easy_park/screen/login_success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'active_booking.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);
  // static final title = 'salomon_bottom_bar';

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  int currentIndex = 0;

  List<Widget> ScreenList = [
    const HomeScreen(),
    const ActiveBooking(),
    const Login_Success(),
    const LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        selectedColorOpacity: 01,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF808080),
        selectedItemColor: const Color(0xFF1D951A),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon:
                const Icon(Icons.home_outlined, color: Color(0xFFFFFFFF)),
            title:
                const Text("Home", style: TextStyle(color: Color(0xFFFFFFFF))),
            // selectedColor: Color(0xFF1D951A),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.tickets),
            activeIcon:
                const Icon(CupertinoIcons.tickets, color: Color(0xFFFFFFFF)),
            title:
                const Text("Book", style: TextStyle(color: Color(0xFFFFFFFF))),
            // selectedColor: Color(0xFF1D951A),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.bookmark_border_outlined),
            activeIcon: const Icon(Icons.bookmark_border_outlined,
                color: Color(0xFFFFFFFF)),
            title:
                const Text("Saved", style: TextStyle(color: Color(0xFFFFFFFF))),
            // selectedColor: Color(0xFF1D951A),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person_outline_sharp),
            activeIcon: const Icon(Icons.person_outline_sharp,
                color: Color(0xFFFFFFFF)),
            title: const Text("Profile",
                style: TextStyle(color: Color(0xFFFFFFFF))),
            // selectedColor: Color(0xFF1D951A),
          ),
        ],
      ),
      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: currentIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   indicatorShape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //   height: 49,
      //   backgroundColor: Color(0xFFFFFFFF),
      //   indicatorColor: Color(0xFF1D951A),
      //   destinations: const [
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home_outlined, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       selectedIcon:
      //           Icon(CupertinoIcons.tickets, color: Color(0xFFFFFFFF)),
      //       icon: Icon(CupertinoIcons.tickets),
      //       label: 'Book',
      //     ),
      //     NavigationDestination(
      //       selectedIcon:
      //           Icon(Icons.bookmark_border_outlined, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.bookmark_border_outlined),
      //       label: 'Saved',
      //     ),
      //     NavigationDestination(
      //       selectedIcon:
      //           Icon(Icons.person_outline_sharp, color: Color(0xFFFFFFFF)),
      //       icon: Icon(Icons.person_outline_sharp),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
