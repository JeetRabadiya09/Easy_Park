import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: const Color(0xFF000000),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17.0),
              child: Text("You have any question ?",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w700,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onTap: () {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: const EdgeInsets.all(15),
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(16)),
                    filled: true,
                    fillColor: const Color(0xFFECECEC),
                    enabled: false,
                    hintText: "Search",
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Frequently Asked",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "sf-pro-display-cufonfonts")),
                  Spacer(),
                  Text("View All",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w700,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
              ),
            ),
            const Center(
              child: Text("How do I create a Smartpay account?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w700,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(height: 08),
            const Center(
              child: Text(
                  "You can create a Smartpay account by: download\nand\nopen the smartpay application first then select ...",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                      fontWeight: FontWeight.w400,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(height: 35),
            const Center(
              child: Text("How to create a card for Smartpay?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w700,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(height: 08),
            const Center(
              child: Text(
                  "You can select the create card menu then select\n'Add New Card' select the continue button then\nyou ...",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                      fontWeight: FontWeight.w400,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(height: 35),
            const Center(
              child: Text("How to Top Up on Smartpay?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w700,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(height: 08),
            const Center(
              child: Text(
                  "Click the Top Up menu then select the amount\nof money and the method then click the\ns'top up now' button...",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                      fontWeight: FontWeight.w400,
                      fontFamily: "sf-pro-display-cufonfonts")),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 48,
                width: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF1D951A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "load more",
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
    );
  }
}
