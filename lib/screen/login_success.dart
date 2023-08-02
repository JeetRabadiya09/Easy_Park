import 'package:easy_park/screen/home_main_screen.dart';
import 'package:flutter/material.dart';

class Login_Success extends StatefulWidget {
  const Login_Success({Key? key}) : super(key: key);

  @override
  State<Login_Success> createState() => _Login_SuccessState();
}

class _Login_SuccessState extends State<Login_Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images3/backround.png",
                  height: double.infinity,
                ),
                Align(
                  heightFactor: 3.9,
                  child: Image.asset(
                    "assets/images3/Variant8.png",
                    height: 123,
                    width: 123,
                  ),
                ),
                Align(
                  heightFactor: 26.5,
                  child: Image.asset(
                    "assets/images3/walk.png",
                    width: 84,
                    height: 25,
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Congratulations",
                    style: TextStyle(
                        fontFamily: "sf-pro-display-cufonfonts",
                        fontWeight: FontWeight.w500,
                        fontSize: 31,
                        color: Color(0xFF1A1A1A)),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 16,
                  child: Text(
                    "Your Account is ready to use!!",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: Color(0xFF1A1A1A)),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 11.6,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeMainScreen(),
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
                          "GO TO HOME",
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
