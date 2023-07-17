import 'package:flutter/material.dart';

import 'home _screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

List<Map<String, dynamic>> Notificationlist = [
  {
    "image": "assets/images4/award.png",
    "title": "Rewards",
    "name": "Loyal user rewards!😘",
    "data": "5m ago",
  },
  {
    "image": "assets/images4/money-send.png",
    "title": "Money Transfer",
    "name": "You have successfully sent money to Maria of...",
    "data": "25m ago",
  },
];
List<Map<String, dynamic>> Notificationtwolist = [
  {
    "image": "assets/images4/credit-card.png",
    "title": "Payment Notification",
    "name": "Successfully paid!🤑",
    "data": "Mar 20",
  },
  {
    "image": "assets/images4/money-recive.png",
    "title": "Top Up",
    "name": "Your top up is successfully!",
    "data": "Mar 13",
  },
  {
    "image": "assets/images4/money-send.png",
    "title": "Money Transfer",
    "name": "You have successfully sent money to Maria of...",
    "data": "Mar 09",
  },
  {
    "image": "assets/images4/discount.png",
    "title": "Cashback 25%",
    "name": "You have successfully sent money to Maria of...",
    "data": "Mar 20",
  },
  {
    "image": "assets/images4/credit-card.png",
    "title": "Payment Notification",
    "name": "Successfully paid!🤑",
    "data": "Mar 13",
  },
];

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              color: const Color(0xFF000000),
            ),
            title: const Text(
              "Notifications",
              style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontFamily: "sf-pro-display-cufonfonts",
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color(0xFF000000),
                  )),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Today",
              style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontFamily: "sf-pro-display-cufonfonts",
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            // height: 500,
            child: GridView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.vertical,
              itemCount: 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 70,
                mainAxisSpacing: 0,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFE5E5E5)),
                          padding: const EdgeInsets.all(11),
                          child: Image.asset(
                            Notificationlist[index]["image"],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 04, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                Notificationlist[index]["title"],
                                style: const TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Text(
                                Notificationlist[index]["data"],
                                style: const TextStyle(
                                    color: Color(0xFF1A1A1A),
                                    fontFamily: "sf-pro-display-cufonfonts",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                          Text(
                            Notificationlist[index]["name"],
                            style: const TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontFamily: "sf-pro-display-cufonfonts",
                                fontWeight: FontWeight.w400,
                                fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "This Week",
              style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontFamily: "sf-pro-display-cufonfonts",
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Align(
            heightFactor: 0.5,
            child: SizedBox(
              // height: 500,
              child: GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 70,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFFE5E5E5)),
                            padding: const EdgeInsets.all(11),
                            child: Image.asset(
                              Notificationtwolist[index]["image"],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 04, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  Notificationtwolist[index]["title"],
                                  style: const TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontFamily: "sf-pro-display-cufonfonts",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  Notificationtwolist[index]["data"],
                                  style: const TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontFamily: "sf-pro-display-cufonfonts",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              Notificationtwolist[index]["name"],
                              style: const TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontFamily: "sf-pro-display-cufonfonts",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
