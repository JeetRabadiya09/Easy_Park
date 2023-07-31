import 'package:easy_park/screen/payment_success.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int? radioButton = 0;
  int? radiotwoButton = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: const Color(0xFF000000),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  const Text("Payment Options",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF1A1A1A),
                          fontWeight: FontWeight.w600,
                          fontFamily: "sf-pro-display-cufonfonts")),
                ],
              ),
              const Text(
                "Credi & Debit Cards",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "sf-pro-display-cufonfonts"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xFFE5E5E5), width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                Color(0xFF4D4D4D)),
                            value: 1,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            width: 05,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Credit card",
                                style: TextStyle(
                                    color: Color(0xFF4D4D4D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "sf-pro-display-cufonfonts"),
                              ),
                              const Text(
                                "***** **** **** 5231",
                                style: TextStyle(
                                    color: Color(0xFF4D4D4D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "sf-pro-display-cufonfonts"),
                              ),
                              const SizedBox(
                                height: 07,
                              ),
                              Image.asset("assets/images6/CVV.png",
                                  width: 91, height: 31),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images6/Visa.png",
                            width: 37,
                            height: 12,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                Color(0xFF4D4D4D)),
                            value: 2,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            width: 05,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Debit card",
                                style: TextStyle(
                                    color: Color(0xFF4D4D4D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "sf-pro-display-cufonfonts"),
                              ),
                              const Text(
                                "***** **** **** 4265",
                                style: TextStyle(
                                    color: Color(0xFF4D4D4D),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "sf-pro-display-cufonfonts"),
                              ),
                              const SizedBox(
                                height: 07,
                              ),
                              Image.asset("assets/images6/CVV.png",
                                  width: 91, height: 31),
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images6/Mastercard.png",
                            width: 25,
                            height: 19,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "UPI",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "sf-pro-display-cufonfonts"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 134,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xFFE5E5E5), width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFF999999), width: 1.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(09),
                        child: Row(
                          children: [
                            Image.asset("assets/images6/google pay.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Google Pay",
                              style: TextStyle(
                                  color: Color(0xFF4D4D4D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "sf-pro-display-cufonfonts"),
                            ),
                            const Spacer(),
                            Radio(
                              fillColor: const MaterialStatePropertyAll(
                                  Color(0xFF1D951A)),
                              value: 1,
                              groupValue: radiotwoButton,
                              onChanged: (value) {
                                radiotwoButton = value;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFF999999), width: 1.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(09),
                        child: Row(
                          children: [
                            Image.asset("assets/images6/phone pay.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "PhonePe",
                              style: TextStyle(
                                  color: Color(0xFF4D4D4D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "sf-pro-display-cufonfonts"),
                            ),
                            const Spacer(),
                            Radio(
                              fillColor: const MaterialStatePropertyAll(
                                  Color(0xFF1D951A)),
                              value: 2,
                              groupValue: radiotwoButton,
                              onChanged: (value) {
                                radiotwoButton = value;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "More Payment Options",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "sf-pro-display-cufonfonts"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color(0xFFE5E5E5), width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFF999999), width: 1.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(09),
                        child: Row(
                          children: [
                            Image.asset("assets/images6/wallet.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Color(0xFF4D4D4D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "sf-pro-display-cufonfonts"),
                            ),
                            const Spacer(),
                            Image.asset("assets/images6/arrow.png"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFF999999), width: 1.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(09),
                        child: Row(
                          children: [
                            Image.asset("assets/images6/bank.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Net Banking",
                              style: TextStyle(
                                  color: Color(0xFF4D4D4D),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "sf-pro-display-cufonfonts"),
                            ),
                            const Spacer(),
                            Image.asset("assets/images6/arrow.png"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF2F2F2)),
                padding: const EdgeInsets.only(right: 07, left: 07),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        Text("\$30",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF1D951A),
                                fontWeight: FontWeight.w500,
                                fontFamily: "sf-pro-display-cufonfonts")),
                        Text("Total",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF808080),
                                fontWeight: FontWeight.w500,
                                fontFamily: "sf-pro-display-cufonfonts")),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentSuccess(),
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
                          "pay now",
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
            ],
          ),
        ),
      ),
    );
  }
}
