import 'package:easy_park/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 1.9,
                child: Image.asset(
                  "assets/images5/profile2.png",
                  height: 120,
                  width: 120,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
            child: Container(
              height: 51,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F2F2)),
              padding: const EdgeInsets.all(15),
              child: const Text("Olivia Lucas ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
            child: Container(
              height: 51,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F2F2)),
              padding: const EdgeInsets.all(15),
              child: const Text("Olivia",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
            child: Container(
              height: 51,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F2F2)),
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const Text("12/27/1995",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w500,
                          fontFamily: "sf-pro-display-cufonfonts")),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/Calendar.png",
                    width: 18,
                    height: 18,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
            child: Container(
              height: 51,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F2F2)),
              padding: const EdgeInsets.all(15),
              child: const Row(
                children: [
                  Text("+91  8125256521",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w500,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
            child: Container(
              height: 51,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F2F2)),
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const Text("andrew_ainsley@yourdomain.com",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w500,
                          fontFamily: "sf-pro-display-cufonfonts")),
                  const Spacer(),
                  Image.asset(
                    "assets/images5/Message.png",
                    width: 18,
                    height: 18,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                height: 48,
                width: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D951A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "update",
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
        ],
      ),
    );
  }
}
