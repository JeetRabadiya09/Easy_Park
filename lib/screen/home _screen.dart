// ignore_for_file: must_be_immutable

import 'package:easy_park/screen/search_screen.dart';
import 'package:easy_park/screen/signup.dart';
import 'package:flutter/material.dart';

import 'ar_view.dart';
import 'login_success.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Map mapdata = {
  "text": "white color",
};
List<Map<String, dynamic>> Booklist = [
  {
    "image": "assets/images4/list1.png",
    "title": "3 Birrel Avenue",
    "name": "road no.12 sam courts,hyd",
  },
  {
    "image": "assets/images4/list2.png",
    "title": "Safe Parking ",
    "name": "road no.12 sam courts,hyd",
  },
  {
    "image": "assets/images4/list3.png",
    "title": "Easy Park ",
    "name": "road no.12 sam courts,hyd",
  },
  {
    "image": "assets/images4/list4.png",
    "title": "Lets Park ",
    "name": "road no.12 sam courts,hyd",
  },
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images4/Map.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images4/location.png",
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xFF808080)),
                            ),
                            Text(
                              "Kukatpally,Hyderabad ",
                              style: TextStyle(
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFF1A1A1A)),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xFF1A1A1A),
                                    blurRadius: 0.1,
                                  ),
                                ],
                                color: const Color(0xFFFFFFFF)),
                            padding: const EdgeInsets.all(08),
                            child: Image.asset(
                              "assets/images4/bell.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 05,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    heightFactor: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 70, left: 18),
                      child: Container(
                        width: 270,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF1A1A1A),
                              blurRadius: 0.1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images3/search.png",
                              height: 24,
                              width: 24,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArView(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Search for parking",
                                style: TextStyle(
                                    color: Color(0xFFCCCCCC),
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ArView(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/images4/filter2.png",
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // TextField(
                      //   decoration: InputDecoration(
                      //     fillColor: const Color(0xFFFFFFFF),
                      //     filled: true,
                      //     enabled: true,
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide:
                      //             const BorderSide(color: Color(0xFFFFFFFF)),
                      //         borderRadius: BorderRadius.circular(13)),
                      //     contentPadding: const EdgeInsets.all(2),
                      //     isDense: true,
                      //     hintText: "Search for parking",
                      //     hintStyle: const TextStyle(
                      //         color: Color(0xFFB3B3B3),
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w400,
                      //         fontFamily: "sf-pro-display-cufonfonts"),
                      //     prefixIcon: const Icon(
                      //       Icons.search_sharp,
                      //       color: Color(0xFF1A1A1A),
                      //       size: 26,
                      //     ),
                      //     suffixIcon: Padding(
                      //       padding: const EdgeInsets.only(right: 15),
                      //       child: GestureDetector(
                      //         onTap: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => const ArView(),
                      //             ),
                      //           );
                      //         },
                      //         child: Image.asset(
                      //           "assets/images4/filter2.png",
                      //         ),
                      //       ),
                      //     ),
                      //     suffixIconConstraints: BoxConstraints.loose(
                      //       const Size(35, 35),
                      //     ),
                      //   ),
                      //   onTap: () {},
                      // ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login_Success(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 285),
                      child: Align(
                        heightFactor: 3.0,
                        child: Image.asset(
                          "assets/images4/logo.png",
                          width: 52,
                          height: 52,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    heightFactor: 1.82,
                    child: Image.asset(
                      "assets/images4/Group 1000007741.png",
                      width: 327,
                      height: 343,
                    ),
                  ),
                  Align(
                    heightFactor: 4.9,
                    child: SizedBox(
                      height: 220,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Booklist.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
                        padding: const EdgeInsets.only(left: 14),
                        itemBuilder: (context, index) => Container(
                          // height: 388,
                          width: 343,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 11,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Booklist[index]["image"],
                                    height: 99,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    Booklist[index]["title"],
                                    style: const TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 24),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    "assets/images4/star.png",
                                    height: 20,
                                    width: 21,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "sf-pro-display-cufonfonts",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    Booklist[index]["name"],
                                    style: const TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF808080)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "\$ 05",
                                    style: TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 27,
                                        color: Color(0xFF1D951A)),
                                  ),
                                  const Text(
                                    "/Hr",
                                    style: TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Color(0xFF808080)),
                                  ),
                                  const Spacer(),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        fixedSize:
                                            const MaterialStatePropertyAll(
                                                Size(145, 36)),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                          Color(0xFF1D951A),
                                        ),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(7)))),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SignUp(),
                                        ),
                                      );
                                    },
                                    child: const Text("Book Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts")),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
