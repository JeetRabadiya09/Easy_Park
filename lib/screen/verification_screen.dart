import 'package:easy_park/screen/login_screen.dart';
import 'package:easy_park/screen/signup.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  color: const Color(0xFF000000),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Enter authentication code",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "sf-pro-display-cufonfonts",
                fontWeight: FontWeight.w500,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter the 4-digit that we have sent via the",
              style: TextStyle(
                fontSize: 13,
                fontFamily: "sf-pro-display-cufonfonts",
                fontWeight: FontWeight.w500,
                color: Color(0xFF808080),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "phone number",
                  style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: "sf-pro-display-cufonfonts"),
                ),
                const Text(
                  "+91 8125256521",
                  style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "sf-pro-display-cufonfonts"),
                ),
                Image.asset("assets/images6/Exclude2.png",
                    width: 22, height: 22),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset("assets/images6/5-digit code.png",
                height: 48, width: 240),
            SizedBox(height: 200,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ),
                );
              },
              child: Container(
                height: 48,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D951A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t receive a Code ? ",
                  style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: "sf-pro-display-cufonfonts"),
                ),
                TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const HomeMainScreen(),
                      //     ));
                    },
                    child: const Text(
                      "Resend  Code",
                      style: TextStyle(
                          fontFamily: "sf-pro-display-cufonfonts",
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Color(0xFF1D951A)),
                    ))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
