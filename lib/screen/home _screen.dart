// ignore_for_file: must_be_immutable

import 'package:easy_park/screen/parking_detail.dart';
import 'package:easy_park/screen/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'ar_view.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Map mapdata = {
  "text": "white color",
};
List<Map<String, dynamic>> Booklist = [
  {
    "image": "assets/images4/list1.png",
    "title": "3 Birrel Avenue",
    "name": "road no.12 sam courts,hyd",
  },
  {
    "image": "assets/images4/list2.png",
    "title": "Safe Parking ",
    "name": "road no.12 sam courts,hyd",
  },
  {
    "image": "assets/images4/list3.png",
    "title": "Easy Park ",
    "name": "road no.12 sam courts,hyd",
  },
  {
    "image": "assets/images4/list4.png",
    "title": "Lets Park ",
    "name": "road no.12 sam courts,hyd",
  },
];

class _HomeScreenState extends State<HomeScreen> {
  bool switchvalue = true;
  LatLng initialLocation = const LatLng(21.214689, 72.888713);
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/Location_marker.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  // final Completer<GoogleMapController> googlecontroller =
  //     Completer<GoogleMapController>();
  //
  // static const CameraPosition kGooglePlex = CameraPosition(
  //   target: LatLng(21.214689, 72.888713),
  //   zoom: 17.4746,
  // );
  //
  // static const CameraPosition kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(21.2147, 72.8887),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 750,
                    width: double.infinity,
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: CameraPosition(
                        target: initialLocation,
                        zoom: 14,
                      ),
                      markers: {
                        Marker(
                          markerId: const MarkerId("marker1"),
                          position: const LatLng(21.214689, 72.888713),
                          draggable: true,
                          onDragEnd: (value) {
                            // value is the new position
                          },
                          icon: markerIcon,
                        ),
                        // Marker(
                        //   markerId: const MarkerId("marker2"),
                        //   position: const LatLng(21.214689, 72.888713),
                        // ),
                      },
                    ),
                    // GoogleMap(
                    //   markers: <Marker>{
                    //     Marker(
                    //       markerId: MarkerId('id'),
                    //       position: LatLng(21.2147, 72.8887),
                    //       onTap: () {},
                    //     ),
                    //   },
                    //   mapType: MapType.hybrid,
                    //   initialCameraPosition: kGooglePlex,
                    //   onMapCreated: (GoogleMapController controller) {
                    //     googlecontroller.complete(controller);
                    //   },
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images4/location.png",
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xFF808080)),
                            ),
                            Text(
                              "Kukatpally,Hyderabad ",
                              style: TextStyle(
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFF1A1A1A)),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xFF1A1A1A),
                                    blurRadius: 0.1,
                                  ),
                                ],
                                color: const Color(0xFFFFFFFF)),
                            padding: const EdgeInsets.all(08),
                            child: Image.asset(
                              "assets/images4/bell.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 05,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    heightFactor: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 70, left: 18),
                      child: Container(
                        width: 270,
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SearchScreen(),
                                  ),
                                );
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
                                  isScrollControlled: true,
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
                                              padding:
                                                  EdgeInsets.only(left: 28),
                                              child: Text(
                                                "Sort",
                                                style: TextStyle(
                                                    color: Color(0xFF1A1A1A),
                                                    fontFamily:
                                                        "sf-pro-display-cufonfonts",
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                                        color:
                                                            Color(0xFF1D951A)),
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
                                                        color:
                                                            Color(0xFF4D4D4D)),
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
                                                        color:
                                                            Color(0xFF4D4D4D)),
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
                                                        color:
                                                            Color(0xFF4D4D4D)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 28),
                                              child: Text(
                                                "From Easy Park",
                                                style: TextStyle(
                                                    color: Color(0xFF1A1A1A),
                                                    fontFamily:
                                                        "sf-pro-display-cufonfonts",
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 28, right: 28),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images4/t5.png",
                                                    height: 24,
                                                    width: 24,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Deals ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "sf-pro-display-cufonfonts",
                                                        color:
                                                            Color(0xFF4D4D4D)),
                                                  ),
                                                  const Spacer(),
                                                  CupertinoSwitch(
                                                    value: switchvalue,
                                                    onChanged: (value) {
                                                      debugPrint(
                                                          "value --> $value");
                                                      setState(() {
                                                        switchvalue = value;
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 08,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 28, right: 28),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images4/t6.png",
                                                    height: 23,
                                                    width: 23,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                    "Highest rated ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "sf-pro-display-cufonfonts",
                                                        color:
                                                            Color(0xFF4D4D4D)),
                                                  ),
                                                  const Spacer(),
                                                  CupertinoSwitch(
                                                    value: switchvalue,
                                                    onChanged: (value) {
                                                      debugPrint(
                                                          "value --> $value");
                                                      setState(() {
                                                        switchvalue = value;
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 28),
                                              child: Text(
                                                "Max. Parking Fee",
                                                style: TextStyle(
                                                    color: Color(0xFF1A1A1A),
                                                    fontFamily:
                                                        "sf-pro-display-cufonfonts",
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ArView(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 285),
                      child: Align(
                        heightFactor: 3.0,
                        child: Image.asset(
                          "assets/images4/logo.png",
                          width: 52,
                          height: 52,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    heightFactor: 4.9,
                    child: SizedBox(
                      height: 220,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Booklist.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 30),
                        padding: const EdgeInsets.only(left: 14),
                        itemBuilder: (context, index) => Container(
                          // height: 388,
                          width: 343,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 11,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Booklist[index]["image"],
                                    height: 99,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    Booklist[index]["title"],
                                    style: const TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 24),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    "assets/images4/star.png",
                                    height: 20,
                                    width: 21,
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "sf-pro-display-cufonfonts",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    Booklist[index]["name"],
                                    style: const TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF808080)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "\$ 05",
                                    style: TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 27,
                                        color: Color(0xFF1D951A)),
                                  ),
                                  const Text(
                                    "/Hr",
                                    style: TextStyle(
                                        fontFamily: "sf-pro-display-cufonfonts",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Color(0xFF808080)),
                                  ),
                                  const Spacer(),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        fixedSize:
                                            const MaterialStatePropertyAll(
                                                Size(145, 36)),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                          Color(0xFF1D951A),
                                        ),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(7)))),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ParkingDetailScreen(),
                                        ),
                                      );
                                    },
                                    child: const Text("Book Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            fontFamily:
                                                "sf-pro-display-cufonfonts")),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
