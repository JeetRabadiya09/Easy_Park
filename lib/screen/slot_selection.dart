import 'package:flutter/material.dart';

import 'dateandtime.dart';

class SlotSelection extends StatefulWidget {
  const SlotSelection({Key? key}) : super(key: key);

  @override
  State<SlotSelection> createState() => _SlotSelectionState();
}

class _SlotSelectionState extends State<SlotSelection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    width: 63,
                  ),
                  const Text("Choose Slots",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w600,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
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
                        child: Text("Ground Floor",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "sf-pro-display-cufonfonts")),
                        // text: "Available",
                      ),
                      Tab(
                        child: Text("First floor",
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
            Image.asset(
              "assets/images6/Auto Layout Horizontal.png",
              height: 495,
              width: 305,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DateAndTime(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 48,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D951A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Part at slot 06",
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
          ],
        ),
      ),
    );
  }
}
