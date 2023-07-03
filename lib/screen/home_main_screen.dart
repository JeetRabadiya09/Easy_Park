import 'package:easy_park/screen/home%20_screen.dart';
import 'package:easy_park/screen/login_screen.dart';
import 'package:easy_park/screen/login_success.dart';
import 'package:easy_park/screen/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  int currentIndex = 0;

  List<Widget> ScreenList = [
    HomeScreen(),
    SignUp(),
    Login_Success(),
    LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     setState(() {
      //       currentIndex = value;
      //     });
      //   },
      //   currentIndex: currentIndex,
      //   backgroundColor: Colors.white,
      //   selectedLabelStyle: TextStyle(),
      //   showSelectedLabels: true,
      //   unselectedItemColor: Color(0xFF808080),
      //   type: BottomNavigationBarType.shifting,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       // backgroundColor: Color(0xFF1D951A),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.tickets),
      //       backgroundColor: Color(0xFF1D951A),
      //       label: 'Book',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark_border_outlined),
      //       backgroundColor: Color(0xFF1D951A),
      //       label: 'Saved',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline_sharp),
      //       backgroundColor: Color(0xFF1D951A),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        indicatorShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        height: 49,
        backgroundColor: Color(0xFFFFFFFF),
        indicatorColor: Color(0xFF1D951A),
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined, color: Color(0xFFFFFFFF)),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(CupertinoIcons.tickets, color: Color(0xFFFFFFFF)),
            icon: Icon(CupertinoIcons.tickets),
            label: 'Book',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.bookmark_border_outlined, color: Color(0xFFFFFFFF)),
            icon: Icon(Icons.bookmark_border_outlined),
            label: 'Saved',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.person_outline_sharp, color: Color(0xFFFFFFFF)),
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
