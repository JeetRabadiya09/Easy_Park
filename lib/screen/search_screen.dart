import 'package:easy_park/screen/ar_view.dart';
import 'package:easy_park/screen/home%20_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

List<Map<String, dynamic>> searchList = [
  {
    "image": "assets/images4/Group 13.png",
    "title": "18th Street Brewery",
    "name": "Oakley Avenue, Hammond, Hyd",
  },
  {
    "image": "assets/images4/Group 13.png",
    "title": "18th Avenue",
    "name": "Brooklyn, Hyd",
  },
];

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
            Align(
              heightFactor: 2.5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFF1D951A), width: 02),
                        borderRadius: BorderRadius.circular(11)),
                    prefixIcon: Icon(Icons.search_rounded, size: 34),
                  ),
                  cursorColor: Color(0xFF1D951A),
                ),
              ),
            ),
            ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 2,
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArView(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            searchList[index]["image"],
                            height: 32,
                            width: 25,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                searchList[index]["title"],
                                style: const TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                              Text(
                                searchList[index]["name"],
                                style: const TextStyle(
                                    color: Color(0xFF808080),
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
