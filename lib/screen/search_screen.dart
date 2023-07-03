import 'package:easy_park/screen/home%20_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: BackButton(
                color: const Color(0xFF000000),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Find Nearby Parking",
                style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: "sf-pro-display-cufonfonts"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Enter your location to find them.",
                style: TextStyle(
                    color: Color(0xFF808080),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: "sf-pro-display-cufonfonts"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
