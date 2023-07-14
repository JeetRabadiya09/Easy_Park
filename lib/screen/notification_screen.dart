import 'package:flutter/material.dart';

import 'home _screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
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
        ],
      ),
    );
  }
}
