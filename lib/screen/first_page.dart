import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D951A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/welcome.png",
                    width: 300, height: 250),
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        children: [
                          Text("EASY",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CarterOne")),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/CAR.png",
                            height: 135,
                            width: 78,
                          ),
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("PARK",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CarterOne")),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
