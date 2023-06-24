import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images3/park3.png"),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 22),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enter Your Mobile Number",
                style: TextStyle(
                    color: Color(0xFF333333),
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w500,
                    fontSize: 23),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(21),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 0.8, color: Color(0x8EB3B3B3)),
                ),
                contentPadding: EdgeInsets.all(02),
                isDense: true,
                hintText: "Enter Mobile Number ",
                hintStyle: const TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "sf-pro-display-cufonfonts"),
                prefixIcon: const Icon(
                  Icons.phone_android_rounded,
                  color: Color(0xFF808080),
                ),
              ),
              onTap: () {},
            ),
          ),
          // Expanded(
          //   child: Container(
          //     height: 48,
          //     width: double.infinity,
          //     decoration: BoxDecoration(color: ,borderRadius: BorderRadius.circular()),
          //   ),
          // )
        ],
      ),
    );
  }
}
