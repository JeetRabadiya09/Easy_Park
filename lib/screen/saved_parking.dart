import 'package:easy_park/screen/parking_detail.dart';
import 'package:flutter/material.dart';

class SavedParking extends StatefulWidget {
  const SavedParking({Key? key}) : super(key: key);

  @override
  State<SavedParking> createState() => _SavedParkingState();
}

List<Map<String, dynamic>> SavedList = [
  {
    "image": "assets/images5/a1.png",
    "title": "3 Birrel Avenue",
    "name": "7159 Washington Alley",
  },
  {
    "image": "assets/images5/a2.png",
    "title": "Allington Paddock",
    "name": "2738 Moland Avenue",
  },
  {
    "image": "assets/images5/a3.png",
    "title": "Appleton Warren",
    "name": "4635 Scoville Plaza",
  },
  {
    "image": "assets/images5/a4.png",
    "title": "Woodville Beeches",
    "name": "28841 Redwing Avenue",
  },
];

class _SavedParkingState extends State<SavedParking> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text("Saved Parking’s",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w600,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ParkingDetailScreen(),
                  ),
                );
              },
              child: SizedBox(
                // height: 500,
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 75,
                    mainAxisSpacing: 11,
                  ),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 18, left: 18),
                    child: Container(
                      height: 95,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0x88BDBDBD), width: 0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(09),
                            child: Image.asset(
                              SavedList[index]["image"],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  SavedList[index]["title"],
                                  style: const TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontFamily: "sf-pro-display-cufonfonts",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.5),
                                ),
                                Text(
                                  SavedList[index]["name"],
                                  style: const TextStyle(
                                      color: Color(0xFF4D4D4D),
                                      fontFamily: "sf-pro-display-cufonfonts",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.bookmark_outlined,
                            color: Color(0xFF1D951A),
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //     Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Column(
                  //         children: [
                  //           Container(
                  //             height: 48,
                  //             width: 48,
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(12),
                  //                 color: const Color(0xFFE5E5E5)),
                  //             padding: const EdgeInsets.all(11),
                  //             child: Image.asset(
                  //               SavedList[index]["image"],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 04, left: 15),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 Text(
                  //                   SavedList[index]["title"],
                  //                   style: const TextStyle(
                  //                       color: Color(0xFF1A1A1A),
                  //                       fontFamily: "sf-pro-display-cufonfonts",
                  //                       fontWeight: FontWeight.w600,
                  //                       fontSize: 16),
                  //                 ),
                  //                 Text(
                  //                   SavedList[index]["data"],
                  //                   style: const TextStyle(
                  //                       color: Color(0xFF1A1A1A),
                  //                       fontFamily: "sf-pro-display-cufonfonts",
                  //                       fontWeight: FontWeight.w400,
                  //                       fontSize: 11),
                  //                 ),
                  //               ],
                  //             ),
                  //             Text(
                  //               SavedList[index]["name"],
                  //               style: const TextStyle(
                  //                   color: Color(0xFF1A1A1A),
                  //                   fontFamily: "sf-pro-display-cufonfonts",
                  //                   fontWeight: FontWeight.w400,
                  //                   fontSize: 11),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
