import 'package:easy_park/screen/parking_ticket.dart';
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
                            builder: (context) => const HomeMainScreen(),
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
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 1.2, color: const Color(0xFFB3B3B3))),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Align(
                          // alignment: Alignment.topCenter,
                          heightFactor: 0.1,
                          child: Image.asset(
                            "assets/images6/payment.png",
                            height: 82,
                            width: 92,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            "Payment Success!",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1A1A1A),
                                fontWeight: FontWeight.w600,
                                fontFamily: "sf-pro-display-cufonfonts"),
                          ),
                        ),
                        const Center(
                          child: Text(
                            "Your payment has been successfully done.",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF4D4D4D),
                                fontWeight: FontWeight.w500,
                                fontFamily: "sf-pro-display-cufonfonts"),
                          ),
                        ),
                        const Divider(
                          indent: 15,
                          endIndent: 15,
                          height: 25,
                          thickness: 1.5,
                          color: Color(0xFF808080),
                        ),
                        const SizedBox(
                          height: 05,
                        ),
                        const Center(
                          child: Text(
                            "Total Payment",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF4D4D4D),
                                fontWeight: FontWeight.w500,
                                fontFamily: "sf-pro-display-cufonfonts"),
                          ),
                        ),
                        const Center(
                          child: Text(
                            "INR 150",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF1A1A1A),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins"),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 62,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: const Color(0xFF808080),
                                          width: 1)),
                                  padding: const EdgeInsets.all(09),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ref Number",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF808080),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                      Text(
                                        "000085752257",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1A1A1A),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 62,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: const Color(0xFF808080),
                                          width: 1)),
                                  padding: const EdgeInsets.all(09),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Payment Method",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF808080),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                      Text(
                                        "Bank Transfer",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1A1A1A),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 62,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: const Color(0xFF808080),
                                          width: 1)),
                                  padding: const EdgeInsets.all(09),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Payment Time",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF808080),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                      Text(
                                        "15 Jun 2023, 13:22",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1A1A1A),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 62,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                          color: const Color(0xFF808080),
                                          width: 1)),
                                  padding: const EdgeInsets.all(09),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sender Name",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF808080),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                      Text(
                                        "Antonio Roberto",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1A1A1A),
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images6/import.png",
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Get PDF Receipt",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF4D4D4D),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "sf-pro-display-cufonfonts"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ParkingTicket(),
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
                    "VIEW TICKET",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeMainScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Book Another",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
