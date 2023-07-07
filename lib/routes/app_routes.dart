import 'package:easy_park/routes/routes_name.dart';
import 'package:easy_park/screen/onboard_screen.dart';
import 'package:easy_park/screen/onboard_second_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext)> approutes = {
    Routesname.initialRoute: (context) => const OnboardScreen(),
    // Routesname.onboardscreen: (context) => const OnboardScreen(),
    Routesname.onboardsecondscreen: (context) => const OnboardSecondScreen(),
  };
}
