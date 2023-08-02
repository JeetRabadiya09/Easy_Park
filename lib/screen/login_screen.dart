import 'package:easy_park/screen/verification_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: ListView(
        children: [
          Form(
            key: formkey,
            child: Column(
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
                      hintText: "Enter Mobile Number ",
                      hintStyle: const TextStyle(
                          color: Color(0xFFB3B3B3),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "sf-pro-display-cufonfonts"),
                      // prefixText: "+91",
                      prefixIcon: const Icon(
                        Icons.phone_android_rounded,
                        color: Color(0xFF808080),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                const Text(
                  "You will receive an SMS verification that may apply\n1message and data rates.",
                  style: TextStyle(
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF808080)),
                ),
                Align(
                  heightFactor: 3.4,
                  child: GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        debugPrint("is valid");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationScreen(),
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
                          "SEND CODE",
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
                const Text(
                  "or Login with",
                  style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: "sf-pro-display-cufonfonts"),
                ),
                Align(
                  heightFactor: 1.7,
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
