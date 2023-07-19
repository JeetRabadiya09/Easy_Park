import 'package:easy_park/screen/parking_ticket.dart';
import 'package:easy_park/screen/parking_timer.dart';
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 42,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xFF808080), width: 0.9),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFFFFF),
                ),
                child: DefaultTabController(
                  initialIndex:
                      1, //optional, starts from 0, select the tab by default
                  length: 2,
                  child: TabBar(
                    splashBorderRadius:
                        const BorderRadius.all(Radius.circular(20)),

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
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          width: 0.8,
                          color: const Color(0xFFBDBDBD),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images5/book.png",
                                  height: 87,
                                  width: 87,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text("3 Birrel Avenue",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    "sf-pro-display-cufonfonts",
                                                color: Color(0xFF1A1A1A))),
                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Text("Porter Away Salt Lake City",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    "sf-pro-display-cufonfonts",
                                                color: Color(0xFF616161))),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text("\$8.08",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    "sf-pro-display-cufonfonts",
                                                color: Color(0xFF1D951A))),
                                        const Text("/ 4 hour",
                                            style: TextStyle(
                                                fontSize: 10.5,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    "sf-pro-display-cufonfonts",
                                                color: Color(0xFF616161))),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          width: 70,
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: const Color(0x801D951A),
                                              borderRadius:
                                                  BorderRadius.circular(5.5)),
                                          child: const Center(
                                            child: Text("Now Active",
                                                style: TextStyle(
                                                    fontSize: 10.5,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily:
                                                        "sf-pro-display-cufonfonts",
                                                    color: Color(0xFF1A1A1A))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              height: 20,
                              thickness: 1,
                              color: Color(0xFFCCCCCC),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ParkingTicket(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 39,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      width: 1,
                                      color: const Color(0xFF4D4D4D),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text("View Ticket",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts",
                                            color: Color(0xFF4D4D4D))),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(140, 25)),
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                      Color(0xFF1D951A),
                                    ),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ParkingTimer(),
                                    ),
                                  );
                                },
                                child: const Text("View Timer",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        color: Color(0xFFFFFFFF))),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    width: 0.8,
                    color: const Color(0xFFBDBDBD),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images5/book.png",
                            height: 87,
                            width: 87,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("San Manolia",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily:
                                              "sf-pro-display-cufonfonts",
                                          color: Color(0xFF1A1A1A))),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text("Porter Away Salt Lake City",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily:
                                              "sf-pro-display-cufonfonts",
                                          color: Color(0xFF616161))),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("\$8.08",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily:
                                              "sf-pro-display-cufonfonts",
                                          color: Color(0xFF1D951A))),
                                  const Text("/ 4 hour",
                                      style: TextStyle(
                                          fontSize: 10.5,
                                          fontWeight: FontWeight.w500,
                                          fontFamily:
                                              "sf-pro-display-cufonfonts",
                                          color: Color(0xFF616161))),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 72,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xFF1D951A)),
                                        borderRadius:
                                            BorderRadius.circular(5.5)),
                                    child: const Center(
                                      child: Text("Start’s in 1hr",
                                          style: TextStyle(
                                              fontSize: 10.5,
                                              fontWeight: FontWeight.w500,
                                              fontFamily:
                                                  "sf-pro-display-cufonfonts",
                                              color: Color(0xFF4D4D4D))),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        height: 20,
                        thickness: 1,
                        color: Color(0xFFCCCCCC),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                            height: 39,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xFF4D4D4D),
                              ),
                            ),
                            child: const Center(
                              child: Text("View Ticket",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "sf-pro-display-cufonfonts",
                                      color: Color(0xFF4D4D4D))),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStatePropertyAll(Size(140, 25)),
                              backgroundColor: const MaterialStatePropertyAll(
                                Color(0xFF1D951A),
                              ),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ParkingTimer(),
                              ),
                            );
                          },
                          child: const Text("Direction",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  color: Color(0xFFFFFFFF))),
                        )
                      ],
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
