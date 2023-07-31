import 'package:easy_park/screen/slot_selection.dart';
import 'package:flutter/material.dart';

class ParkingDetailScreen extends StatefulWidget {
  const ParkingDetailScreen({Key? key}) : super(key: key);

  @override
  State<ParkingDetailScreen> createState() => _ParkingDetailScreenState();
}

class _ParkingDetailScreenState extends State<ParkingDetailScreen> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset("assets/images6/stac.png", width: double.infinity),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 33),
                child: Row(
                  children: [
                    BackButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: const Color(0xFFFFFFFF),
                    ),
                    const SizedBox(
                      width: 63,
                    ),
                    const Text("Parking Details",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontFamily: "sf-pro-display-cufonfonts")),
                  ],
                ),
              ),
              Align(
                heightFactor: 7.7,
                alignment: Alignment.bottomRight,
                widthFactor: 8,
                child: Image.asset(
                  "assets/images6/saved.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("3 Birrel Avenue",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w500,
                    fontFamily: "sf-pro-display-cufonfonts")),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                const Text("Road no.1234 sam courts,Hyd",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF666666),
                        fontWeight: FontWeight.w500,
                        fontFamily: "sf-pro-display-cufonfonts")),
                const Spacer(),
                Image.asset(
                  "assets/images6/star2.png",
                  height: 20,
                  width: 21,
                ),
                const SizedBox(
                  width: 05,
                ),
                const Text("4.5",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "sf-pro-display-cufonfonts"))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F2F2)),
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images6/location1.png"),
                  const Text("2 KM",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4D4D4D),
                          fontWeight: FontWeight.w500,
                          fontFamily: "sf-pro-display-cufonfonts")),
                  Image.asset("assets/images6/watch.png",
                      height: 20, width: 20),
                  const Text("8:00 am - 10:00 pm",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4D4D4D),
                          fontWeight: FontWeight.w500,
                          fontFamily: "sf-pro-display-cufonfonts")),
                  Image.asset("assets/images6/car1.png", width: 21, height: 17),
                  const Text("Valet",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4D4D4D),
                          fontWeight: FontWeight.w500,
                          fontFamily: "sf-pro-display-cufonfonts"))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Descriptions and Rules",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                    fontFamily: "sf-pro-display-cufonfonts")),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
                "Parking is the act of stopping and disengaging a vehicle\nand leaving it unoccupied. Parking on one or both sides\nis often permitted, though sometimes with restrictions.\nSome buildings have parking facilities for use of the",
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF808080),
                    fontWeight: FontWeight.w500,
                    fontFamily: "sf-pro-display-cufonfonts")),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text("buildings' users.",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF808080),
                        fontWeight: FontWeight.w500,
                        fontFamily: "sf-pro-display-cufonfonts")),
                Text("Read More...",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1D951A),
                        fontWeight: FontWeight.w500,
                        fontFamily: "sf-pro-display-cufonfonts")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFFFFFFF),
                boxShadow: const [
                  BoxShadow(blurRadius: 03, color: Color(0xFFD9D9D9))
                ],
              ),
              padding: const EdgeInsets.only(left: 05, right: 05),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images6/id.png",
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kumar Varma",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "sf-pro-display-cufonfonts")),
                      Text("Owner",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF808080),
                              fontWeight: FontWeight.w500,
                              fontFamily: "sf-pro-display-cufonfonts"))
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images6/id2.png",
                    height: 40,
                    width: 40,
                  ),
                  Image.asset(
                    "assets/images6/id3.png",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
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
                          builder: (context) => const SlotSelection(),
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
                        "Book now",
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
    );
  }
}
