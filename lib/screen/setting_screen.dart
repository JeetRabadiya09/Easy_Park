import 'package:easy_park/screen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

import 'faq_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: const Color(0xFF000000),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text("Edit Profile",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w600,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
              ),
            ),
            Expanded(
              child: OnBoardingAnimation(
                pages: [
                  Padding(
                    padding: const EdgeInsets.all(05),
                    child: Image.asset(
                      "assets/images5/In-App Banner_1.png",
                      width: 325,
                      // height: 182,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(05),
                    child: Image.asset(
                      "assets/images5/In-App Banner_2.png",
                      width: 325,
                      // height: 182,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(05),
                    child: Image.asset(
                      "assets/images5/In-App Banner_3.png",
                      width: 325,
                      // height: 182,
                    ),
                  ),
                ],
                indicatorDotHeight: 7.0,
                indicatorDotWidth: 7.0,
                indicatorActiveDotColor: Color(0xFFFFFFFF),
                indicatorType: IndicatorType.colourTransitionDots,
                indicatorPosition: IndicatorPosition.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images5/Profile1.png",
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Account ",
                        style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Make changes to your account",
                        style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/arrow.png",
                    width: 26,
                    height: 26,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images5/Profile1.png",
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Saved Beneficiary",
                        style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Manage your saved account",
                        style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/arrow.png",
                    width: 26,
                    height: 26,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images5/Lock.png",
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Face ID / Touch ID",
                        style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Manage your device security",
                        style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CupertinoSwitch(
                    value: switchvalue,
                    onChanged: (value) {
                      debugPrint("value --> $value");
                      setState(() {
                        switchvalue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images5/Shield Done.png",
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Two-Factor Authentication",
                        style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Further secure your account for safety",
                        style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontFamily: "sf-pro-display-cufonfonts",
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/arrow.png",
                    width: 26,
                    height: 26,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FaqScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images5/Notification.png",
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Help & FAQ’s",
                      style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontFamily: "sf-pro-display-cufonfonts",
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images5/arrow.png",
                      width: 26,
                      height: 26,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images5/Heart.png",
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "About App",
                    style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontFamily: "sf-pro-display-cufonfonts",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/arrow.png",
                    width: 26,
                    height: 26,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 47,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 1, color: const Color(0xFF1D951A))),
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
