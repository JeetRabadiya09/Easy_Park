import 'package:easy_park/screen/setting_screen.dart';
import 'package:flutter/material.dart';

import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

List<Map<String, dynamic>> ProfileList = [
  {
    "image": "assets/images5/pr1.png",
    "title": "Profile",
  },
  {
    "image": "assets/images5/pr2.png",
    "title": "Password",
  },
  {
    "image": "assets/images5/pr3.png",
    "title": "Notifications",
  },
  {
    "image": "assets/images5/pr4.png",
    "title": "Favourites",
  },
];
List<Map<String, dynamic>> ProfiletwoList = [
  {
    "image": "assets/images5/pr5.png",
    "title": "Rate & Review",
  },
  {
    "image": "assets/images5/pr6.png",
    "title": "Help",
  },
];

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 170,
                color: const Color(0x761D951A),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 33),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    const Text("Profile",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF1A1A1A),
                            fontWeight: FontWeight.w600,
                            fontFamily: "sf-pro-display-cufonfonts")),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.settings_outlined,
                          color: Color(0xFF191D23),
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 1.9,
                child: Image.asset(
                  "assets/images5/profile.png",
                  height: 120,
                  width: 120,
                ),
              )
            ],
          ),
          const Center(
            child: Text(
              "Ravi Kumar",
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF1A1A1A),
                  fontWeight: FontWeight.w500,
                  fontFamily: "sf-pro-display-cufonfonts"),
            ),
          ),
          const Center(
            child: Text(
              "Olivia Lucas@yourgmail.com",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF666666),
                  fontWeight: FontWeight.w500,
                  fontFamily: "sf-pro-display-cufonfonts"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: Text(
              "Account",
              style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontFamily: "sf-pro-display-cufonfonts",
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images5/pr1.png",
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontFamily: "sf-pro-display-cufonfonts",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/arrow.png",
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images5/pr2.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images5/arrow.png",
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images5/pr3.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Notifications",
                  style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images5/arrow.png",
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images5/pr4.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Favourites",
                  style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images5/arrow.png",
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: Text(
              "More",
              style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontFamily: "sf-pro-display-cufonfonts",
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images5/pr5.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Rate & Review",
                  style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images5/arrow.png",
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images5/pr6.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Help",
                  style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images5/arrow.png",
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          // GridView.builder(
          //   shrinkWrap: true,
          //   // physics: const NeverScrollableScrollPhysics(),
          //   // scrollDirection: Axis.vertical,
          //   itemCount: 4,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 1,
          //     mainAxisExtent: 50,
          //     mainAxisSpacing: 0,
          //   ),
          //   itemBuilder: (context, index) => Padding(
          //     padding: const EdgeInsets.only(left: 20, right: 20),
          //     child: Row(
          //       children: [
          //         Image.asset(
          //           ProfileList[index]["image"],
          //           width: 24,
          //           height: 24,
          //         ),
          //         const SizedBox(
          //           width: 20,
          //         ),
          //         Text(
          //           ProfileList[index]["title"],
          //           style: const TextStyle(
          //               color: Color(0xFF1A1A1A),
          //               fontFamily: "sf-pro-display-cufonfonts",
          //               fontSize: 16,
          //               fontWeight: FontWeight.w500),
          //         ),
          //         const Spacer(),
          //         Image.asset(
          //           "assets/images5/arrow.png",
          //           width: 24,
          //           height: 24,
          //         ),
          //       ],
          //     ),
          //   ),
          //   //     Padding(
          //   //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   //   child: Row(
          //   //     mainAxisAlignment: MainAxisAlignment.start,
          //   //     children: [
          //   //       Column(
          //   //         children: [
          //   //           Container(
          //   //             height: 48,
          //   //             width: 48,
          //   //             decoration: BoxDecoration(
          //   //                 borderRadius: BorderRadius.circular(12),
          //   //                 color: const Color(0xFFE5E5E5)),
          //   //             padding: const EdgeInsets.all(11),
          //   //             child: Image.asset(
          //   //               SavedList[index]["image"],
          //   //             ),
          //   //           ),
          //   //         ],
          //   //       ),
          //   //       Padding(
          //   //         padding: const EdgeInsets.only(top: 04, left: 15),
          //   //         child: Column(
          //   //           crossAxisAlignment: CrossAxisAlignment.start,
          //   //           children: [
          //   //             Row(
          //   //               children: [
          //   //                 Text(
          //   //                   SavedList[index]["title"],
          //   //                   style: const TextStyle(
          //   //                       color: Color(0xFF1A1A1A),
          //   //                       fontFamily: "sf-pro-display-cufonfonts",
          //   //                       fontWeight: FontWeight.w600,
          //   //                       fontSize: 16),
          //   //                 ),
          //   //                 Text(
          //   //                   SavedList[index]["data"],
          //   //                   style: const TextStyle(
          //   //                       color: Color(0xFF1A1A1A),
          //   //                       fontFamily: "sf-pro-display-cufonfonts",
          //   //                       fontWeight: FontWeight.w400,
          //   //                       fontSize: 11),
          //   //                 ),
          //   //               ],
          //   //             ),
          //   //             Text(
          //   //               SavedList[index]["name"],
          //   //               style: const TextStyle(
          //   //                   color: Color(0xFF1A1A1A),
          //   //                   fontFamily: "sf-pro-display-cufonfonts",
          //   //                   fontWeight: FontWeight.w400,
          //   //                   fontSize: 11),
          //   //             ),
          //   //           ],
          //   //         ),
          //   //       ),
          //   //     ],
          //   //   ),
          //   // ),
          // ),
        ],
      ),
    );
  }
}
