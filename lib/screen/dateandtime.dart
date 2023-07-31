import 'package:easy_park/screen/payment_method.dart';
import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({Key? key}) : super(key: key);

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(08),
              child: Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: const Color(0xFF000000),
                  ),
                  const SizedBox(
                    width: 58,
                  ),
                  const Text("Booking Details",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w600,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Select date",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                "assets/images6/Calendar1.png",
                height: 280,
                width: 340,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Duration",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w600,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Image.asset("assets/images6/max fee.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Start Hour",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.w600,
                            fontFamily: "sf-pro-display-cufonfonts")),
                    Container(
                      height: 50,
                      width: 145,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF2F2F2)),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("09.00 AM",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "sf-pro-display-cufonfonts")),
                          Image.asset("assets/images6/watch.png",
                              height: 20, width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: Image.asset(
                    "assets/images6/Arrow - Right.png",
                    width: 18.5,
                    height: 18.5,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("End Hour",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.w600,
                            fontFamily: "sf-pro-display-cufonfonts")),
                    Container(
                      height: 50,
                      width: 145,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF2F2F2)),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("13.00 PM",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "sf-pro-display-cufonfonts")),
                          Image.asset("assets/images6/watch.png",
                              height: 20, width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF2F2F2)),
                padding: const EdgeInsets.only(right: 05, left: 5),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("\$5",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF1D951A),
                            fontWeight: FontWeight.w500,
                            fontFamily: "sf-pro-display-cufonfonts")),
                    const Text("/ Hour",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF808080),
                            fontWeight: FontWeight.w500,
                            fontFamily: "sf-pro-display-cufonfonts")),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentMethod(),
                          ),
                        );
                      },
                      child: Container(
                        height: 48,
                        width: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D951A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "proceed",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
