import 'package:easy_park/screen/parking_detail.dart';
import 'package:easy_park/screen/search_screen.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

List<Map<String, dynamic>> Searchlist = [
  {
    "image": "assets/images4/s1.png",
    "title": "3 Birrel Avenue",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
  {
    "image": "assets/images4/s2.png",
    "title": "Spot Parking",
    "name": "6692 Harris Gardens Suite 113",
    "data": "5km",
    "text": "\$3.00",
  },
  {
    "image": "assets/images4/s3.png",
    "title": "Appleton Warren",
    "name": "6692 Harris Gardens Suite 113",
    "data": "4km",
    "text": "\$3.99",
  },
  {
    "image": "assets/images4/s4.png",
    "title": "Lets Park ",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
  {
    "image": "assets/images4/s5.png",
    "title": "Parking Warren",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
  {
    "image": "assets/images4/s6.png",
    "title": "Appleton Avenue",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
  {
    "image": "assets/images4/s7.png",
    "title": "Safe Parking",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
  {
    "image": "assets/images4/s8.png",
    "title": "Easy Park",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
  {
    "image": "assets/images4/s9.png",
    "title": "Appleton Warren",
    "name": "6692 Harris Gardens Suite 113",
    "data": "8km",
    "text": "\$1.99",
  },
];

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: ListView(
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    BackButton(
                      color: const Color(0xFF000000),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Results Found",
                      style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontFamily: "sf-pro-display-cufonfonts",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Align(
                  heightFactor: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      width: 310,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF1A1A1A),
                            blurRadius: 0.1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images3/search.png",
                            height: 24,
                            width: 24,
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const SearchScreen(),
                              //   ),
                              // );
                            },
                            child: const Text(
                              "Search for parking",
                              style: TextStyle(
                                  color: Color(0xFFCCCCCC),
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                enableDrag: true,
                                backgroundColor: const Color(0xFFFFFFFF),
                                // barrierColor: Colors.black,
                                shape: const OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return Wrap(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 28),
                                            child: Text(
                                              "Sort",
                                              style: TextStyle(
                                                  color: Color(0xFF1A1A1A),
                                                  fontFamily:
                                                      "sf-pro-display-cufonfonts",
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 28, right: 28),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images4/t1.png",
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                const SizedBox(width: 10),
                                                const Text(
                                                  "Picked for you (default)",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          "sf-pro-display-cufonfonts",
                                                      color: Color(0xFF1D951A)),
                                                ),
                                                const Spacer(),
                                                const Icon(
                                                  Icons.done,
                                                  color: Color(0xFF1D951A),
                                                  size: 25,
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 28, right: 28),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images4/t2.png",
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                const SizedBox(width: 10),
                                                const Text(
                                                  "Distance",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          "sf-pro-display-cufonfonts",
                                                      color: Color(0xFF4D4D4D)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 28, right: 28),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images4/t3.png",
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                const SizedBox(width: 10),
                                                const Text(
                                                  "Rating",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          "sf-pro-display-cufonfonts",
                                                      color: Color(0xFF4D4D4D)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 12,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 28, right: 28),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/images4/t4.png",
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                const SizedBox(width: 10),
                                                const Text(
                                                  "Parking Time",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          "sf-pro-display-cufonfonts",
                                                      color: Color(0xFF4D4D4D)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 28),
                                            child: Text(
                                              "From Easy Park",
                                              style: TextStyle(
                                                  color: Color(0xFF1A1A1A),
                                                  fontFamily:
                                                      "sf-pro-display-cufonfonts",
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 28),
                                            child: Text(
                                              "Max. Parking Fee",
                                              style: TextStyle(
                                                  color: Color(0xFF1A1A1A),
                                                  fontFamily:
                                                      "sf-pro-display-cufonfonts",
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Container(
                                                  width: 81,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                          0xFF1A1A1A),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF1A1A1A),
                                                        fontFamily:
                                                            "sf-pro-display-cufonfonts",
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.asset(
                              "assets/images4/filter2.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text(
                    "Results(10)",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: "sf-pro-display-cufonfonts",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  heightFactor: 1,
                  child: SizedBox(
                    // height: 500,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 9,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisExtent: 75,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ParkingDetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            // height: 388,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 03, color: Color(0xFFD9D9D9))
                              ],
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 08, vertical: 12),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        Searchlist[index]["image"],
                                        width: 50,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Searchlist[index]["title"],
                                        style: const TextStyle(
                                            color: Color(0xFF1A1A1A),
                                            fontFamily:
                                                "sf-pro-display-cufonfonts",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        Searchlist[index]["name"],
                                        style: const TextStyle(
                                            color: Color(0xFFB3B3B3),
                                            fontFamily:
                                                "sf-pro-display-cufonfonts",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        Searchlist[index]["data"],
                                        style: const TextStyle(
                                            color: Color(0xFF1A1A1A),
                                            fontFamily:
                                                "sf-pro-display-cufonfonts",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            Searchlist[index]["text"],
                                            style: const TextStyle(
                                                color: Color(0xFF1D951A),
                                                fontFamily:
                                                    "sf-pro-display-cufonfonts",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                          const Text(
                                            "/hour",
                                            style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontFamily:
                                                    "sf-pro-display-cufonfonts",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // ElevatedButton(
                                //   style: ButtonStyle(
                                //       fixedSize: const MaterialStatePropertyAll(
                                //           Size(145, 36)),
                                //       backgroundColor:
                                //           const MaterialStatePropertyAll(
                                //         Color(0xFF1D951A),
                                //       ),
                                //       shape: MaterialStatePropertyAll(
                                //           RoundedRectangleBorder(
                                //               borderRadius:
                                //                   BorderRadius.circular(7)))),
                                //   onPressed: () {
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //         builder: (context) => const SignUp(),
                                //       ),
                                //     );
                                //   // },
                                //   child: const Text("Book Now",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 19,
                                //           fontWeight: FontWeight.w600,
                                //           fontFamily:
                                //               "sf-pro-display-cufonfonts")),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
