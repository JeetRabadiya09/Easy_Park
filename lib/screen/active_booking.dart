import 'package:flutter/material.dart';

class ActiveBooking extends StatefulWidget {
  const ActiveBooking({Key? key}) : super(key: key);

  @override
  State<ActiveBooking> createState() => _ActiveBookingState();
}

class _ActiveBookingState extends State<ActiveBooking> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
              child: Text(
                "My Booking’s",
                style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 42,
              width: 315,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF808080), width: 0.9),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFFFFFFF),
              ),
              child: DefaultTabController(
                initialIndex:
                    1, //optional, starts from 0, select the tab by default
                length: 2,
                child: TabBar(
                  splashBorderRadius: BorderRadius.all(Radius.circular(20)),

                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  unselectedLabelColor: const Color(0xFF808080),
                  labelColor: const Color(0xFFFFFFFF),
                  indicatorSize: TabBarIndicatorSize.tab,
                  // splashBorderRadius: BorderRadius.circular(30),
                  tabs: const [
                    Tab(
                      child: Text("ACTIVE",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "sf-pro-display-cufonfonts")),
                      // text: "Available",
                    ),
                    Tab(
                      child: Text("COMPLETED",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "sf-pro-display-cufonfonts")),
                      // text: "Add new",
                    ),
                  ],
                  indicator: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    color: const Color(0xFF1D951A),
                  ),

                  indicatorPadding: const EdgeInsets.all(2),
                  labelPadding: EdgeInsets.zero,
                ),
              ),
            ),
            const TabBarView(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
