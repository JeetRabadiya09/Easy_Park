import 'package:flutter/material.dart';

import 'active_booking.dart';

class ParkingTimer extends StatefulWidget {
  const ParkingTimer({Key? key}) : super(key: key);

  @override
  State<ParkingTimer> createState() => _ParkingTimerState();
}

class _ParkingTimerState extends State<ParkingTimer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            children: [
              AppBar(
                leading: BackButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ActiveBooking(),
                      ),
                    );
                  },
                  color: const Color(0xFF000000),
                ),
                title: const Text(
                  "Parking Time",
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
              ),
              Image.asset(
                "assets/images6/timer.png",
                width: double.infinity,
                height: 500,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D951A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "EXTEND PARKING",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActiveBooking(),
                    ),
                  );
                },
                child: Container(
                  height: 48,
                  width: 230,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFFFF0000), width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "STOP PARKING",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "sf-pro-display-cufonfonts",
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFF0000),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
