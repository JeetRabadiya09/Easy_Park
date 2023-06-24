import 'package:flutter/material.dart';

import 'onboard_screen.dart';
import 'onboard_second_screen.dart';

class OnboardThirdScreen extends StatefulWidget {
  const OnboardThirdScreen({Key? key}) : super(key: key);

  @override
  State<OnboardThirdScreen> createState() => _OnboardThirdScreenState();
}

class _OnboardThirdScreenState extends State<OnboardThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images2/onboard3.png",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 15),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardSecondScreen(),
                        ),
                        (route) => false);
                  },
                  icon: const Icon(Icons.keyboard_backspace_sharp,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
              Align(
                heightFactor: 1.97,
                alignment: Alignment.bottomCenter,
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 372,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                        color: Color(0xFFFFFFFF)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          "SEAMLESS EXPERIENCE",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF1A1A1A)),
                        ),
                        const SizedBox(height: 35),
                        const Text(
                          "View info of Availability,price",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xFF999999)),
                        ),
                        const Text(
                          "and restrictions",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xFF999999)),
                        ),
                        const SizedBox(height: 55),
                        Image.asset("assets/images2/Group 19.png",
                            width: 50, height: 10),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const OnboardScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 47,
                                width: 335,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1D951A),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  "START PARKING",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
