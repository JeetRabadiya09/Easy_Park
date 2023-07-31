import 'package:flutter/material.dart';

import 'home_main_screen.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeMainScreen(),
                          ));
                    },
                    color: const Color(0xFF000000),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  const Text("Payment Done",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w600,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
