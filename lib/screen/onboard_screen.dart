import 'package:flutter/material.dart';

import 'onboard_second_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images2/onboard1.png",
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
                          "WHEREVER, WHENEVER",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF1A1A1A)),
                        ),
                        const SizedBox(height: 35),
                        const Text(
                          "Find Parking easily across the",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xFF999999)),
                        ),
                        const Text(
                          "Country",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xFF999999)),
                        ),
                        const SizedBox(height: 55),
                        Image.asset("assets/images2/Group 17.png",
                            width: 50, height: 10),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 48,
                              width: 82,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color(0xFF808080),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "SKIP",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF1A1A1A),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, Routesname.onboardsecondscreen);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OnboardSecondScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 47,
                                width: 230,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1D951A),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  "NEXT",
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
          // Stack(
          //   children: [
          //     Container(
          //       height: 756,
          //       width: 35,
          //       color: const Color(0xFFFFFFFF),
          //     ),
          //     Positioned(
          //       child: Column(
          //         children: [
          //           Image.asset(
          //             "assets/images2/onboard1.png",
          //           ),
          //         ],
          //       ),
          //     ),
          //     Positioned(
          //       bottom: 27,
          //       child: Container(
          //         width: 395,
          //         height: 372,
          //         decoration: const BoxDecoration(
          //             borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(30),
          //               topLeft: Radius.circular(30),
          //             ),
          //             color: Color(0xFFFFFFFF)),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             const SizedBox(height: 60),
          //             const Text(
          //               "WHEREVER, WHENEVER",
          //               style: TextStyle(
          //                   fontFamily: "sf-pro-display-cufonfonts",
          //                   fontWeight: FontWeight.w600,
          //                   fontSize: 24,
          //                   color: Color(0xFF1A1A1A)),
          //             ),
          //             const SizedBox(height: 35),
          //             const Text(
          //               "Find Parking easily across the",
          //               style: TextStyle(
          //                   fontFamily: "sf-pro-display-cufonfonts",
          //                   fontWeight: FontWeight.w500,
          //                   fontSize: 20,
          //                   color: Color(0xFF999999)),
          //             ),
          //             const Text(
          //               "Country",
          //               style: TextStyle(
          //                   fontFamily: "sf-pro-display-cufonfonts",
          //                   fontWeight: FontWeight.w500,
          //                   fontSize: 20,
          //                   color: Color(0xFF999999)),
          //             ),
          //             const SizedBox(height: 55),
          //             Image.asset("assets/images2/Group 17.png",
          //                 width: 50, height: 10),
          //             const SizedBox(
          //               height: 60,
          //             ),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Container(
          //                   height: 48,
          //                   width: 82,
          //                   decoration: BoxDecoration(
          //                     border: Border.all(
          //                       width: 1,
          //                       color: const Color(0xFF808080),
          //                     ),
          //                     borderRadius: BorderRadius.circular(10),
          //                   ),
          //                   child: const Center(
          //                     child: Text(
          //                       "SKIP",
          //                       style: TextStyle(
          //                         fontSize: 14,
          //                         fontFamily: "sf-pro-display-cufonfonts",
          //                         fontWeight: FontWeight.w500,
          //                         color: Color(0xFF1A1A1A),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 GestureDetector(
          //                   onTap: () {
          //                     Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                         builder: (context) =>
          //                             const OnboardSecondScreen(),
          //                       ),
          //                     );
          //                   },
          //                   child: Container(
          //                     height: 47,
          //                     width: 230,
          //                     alignment: Alignment.center,
          //                     decoration: BoxDecoration(
          //                       color: const Color(0xFF1D951A),
          //                       borderRadius: BorderRadius.circular(10),
          //                     ),
          //                     child: const Text(
          //                       "NEXT",
          //                       style: TextStyle(
          //                         fontSize: 14,
          //                         fontFamily: "sf-pro-display-cufonfonts",
          //                         fontWeight: FontWeight.w500,
          //                         color: Color(0xFFFFFFFF),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
