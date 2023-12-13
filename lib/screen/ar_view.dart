import 'package:easy_park/screen/home_main_screen.dart';
import 'package:flutter/material.dart';

class ArView extends StatefulWidget {
  const ArView({Key? key}) : super(key: key);

  @override
  State<ArView> createState() => _ArViewState();
}

class _ArViewState extends State<ArView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset("assets/images4/AR View.png",
                    width: double.infinity, height: double.infinity),
                Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 14.5,
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
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Container(
                        height: 48,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D951A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "EXIT AR VIEW",
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
