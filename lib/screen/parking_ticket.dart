import 'package:flutter/material.dart';

import 'home_main_screen.dart';

class ParkingTicket extends StatefulWidget {
  const ParkingTicket({Key? key}) : super(key: key);

  @override
  State<ParkingTicket> createState() => _ParkingTicketState();
}

class _ParkingTicketState extends State<ParkingTicket> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            AppBar(
              leading: BackButton(
                onPressed: () {},
                color: const Color(0xFF000000),
              ),
              title: const Text(
                "e- Ticket",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontFamily: "sf-pro-display-cufonfonts",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Color(0xFF000000),
                    )),
              ],
            ),
            Stack(
              children: [
                Image.asset("assets/images6/ticket.png"),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images6/Rectangle.png",
                        width: 280,
                        height: 150,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/images6/ticket2.png",
                      height: 126,
                      width: 275,
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Image.asset(
                      "assets/images6/ticket3.png",
                      height: 194,
                      width: 275,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeMainScreen(),
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
                  "BACK TO HOME",
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
    ));
  }
}
