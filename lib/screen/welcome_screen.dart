import 'package:easy_park/screen/signup.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Image.asset("assets/images3/park1.png"),
          const Align(
            alignment: Alignment.center,
            heightFactor: 0,
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 48,
                fontWeight: FontWeight.w500,
                fontFamily: "sf-pro-display-cufonfonts",
              ),
            ),
          ),
          Align(
            heightFactor: 2.8,
            child:
                Image.asset("assets/images3/park2.png", width: 120, height: 67),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 48,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D951A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 48,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 01, color: const Color(0xFF808080)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "To Follow us",
                  style: TextStyle(
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Image.asset("assets/images3/Vector3.png",
                    width: 25, height: 20.3),
                const SizedBox(
                  width: 14,
                ),
                Image.asset("assets/images3/Vector2.png",
                    width: 21.89, height: 21.88),
                const SizedBox(
                  width: 14,
                ),
                Image.asset("assets/images3/Vector.png",
                    width: 24.22, height: 24.07),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
