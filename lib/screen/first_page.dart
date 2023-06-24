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
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/welcome.png",
                    width: 300, height: 250),
                const Positioned(
                  top: 75,
                  left: 53,
                  child: Text("EASY",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CarterOne")),
                ),
                Positioned(
                  child: Image.asset(
                    "assets/images/CAR.png",
                    height: 135,
                    width: 78,
                  ),
                ),
                const Positioned(
                  bottom: 75,
                  right: 53,
                  child: Text("PARK",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CarterOne")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
