import 'package:easy_park/screen/home_main_screen.dart';
import 'package:easy_park/screen/login_success.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images3/park4.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 24, top: 22),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create Your Profile",
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontFamily: "sf-pro-display-cufonfonts",
                          fontWeight: FontWeight.w500,
                          fontSize: 23),
                    ),
                  ),
                ),
                Align(
                  heightFactor: 1.12,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 21, left: 21, top: 12),
                    child: TextFormField(
                      validator: (value) {
                        if (!RegExp(r"^[a-z0-9]").hasMatch(value!)) {
                          return "Please enter  Username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0.8, color: Color(0x8EB3B3B3)),
                        ),
                        contentPadding: const EdgeInsets.all(02),
                        isDense: true,
                        hintText: "User Name",
                        hintStyle: const TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "sf-pro-display-cufonfonts"),
                        prefixIcon: const Icon(
                          Icons.person_outline_sharp,
                          color: Color(0xFFB3B3B3),
                          size: 25,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Align(
                  heightFactor: 1.12,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 21, left: 21),
                    child: TextFormField(
                      validator: (value) {
                        if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0.8, color: Color(0x8EB3B3B3)),
                        ),
                        contentPadding: const EdgeInsets.all(02),
                        isDense: true,
                        hintText: "Email",
                        hintStyle: const TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "sf-pro-display-cufonfonts"),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xFFB3B3B3),
                          size: 25,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Align(
                  heightFactor: 1.12,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 21, left: 21),
                    child: TextFormField(
                      validator: (value) {
                        if (!RegExp(r"^(?:[+0]9)?[0-9]{10,12}$")
                            .hasMatch(value!)) {
                          return "Please enter valid number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0.8, color: Color(0x8EB3B3B3)),
                        ),
                        contentPadding: const EdgeInsets.all(02),
                        isDense: true,
                        hintText: "Mobile",
                        hintStyle: const TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "sf-pro-display-cufonfonts"),
                        prefixIcon: const Icon(
                          Icons.phone_android_rounded,
                          color: Color(0xFFB3B3B3),
                          size: 25,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                Align(
                  heightFactor: 1.2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 21, left: 21),
                    child: TextFormField(
                      validator: (value) {
                        if (!RegExp(r"^[a-zA-Z0-9]{6}$").hasMatch(value!)) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0.8, color: Color(0x8EB3B3B3)),
                        ),
                        contentPadding: const EdgeInsets.all(02),
                        isDense: true,
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "sf-pro-display-cufonfonts"),
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xFFB3B3B3),
                          size: 25,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login_Success(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
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
                        "CREATE",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Want to add later?",
                      style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          fontFamily: "sf-pro-display-cufonfonts"),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeMainScreen(),
                              ));
                        },
                        child: const Text(
                          "SKIP",
                          style: TextStyle(
                              fontFamily: "sf-pro-display-cufonfonts",
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xFF1D951A)),
                        ))
                  ],
                ),
                const Align(
                  heightFactor: 3.3,
                  child: Text("or Create Account with",
                      style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ),
                Align(
                  heightFactor: 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images3/google.png",
                        width: 44,
                        height: 44,
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      Image.asset(
                        "assets/images3/facebook.png",
                        width: 44,
                        height: 44,
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      Image.asset(
                        "assets/images3/apple.png",
                        width: 44,
                        height: 44,
                      )
                    ],
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
