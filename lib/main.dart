
import 'package:businesscard/Screens/HomeScreen/HomeScreen.dart';
import 'package:businesscard/Screens/SubscriptionScreen/FreeTrialScreen.dart';
import 'package:businesscard/Screens/SubscriptionScreen/SubscriptionScreen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}


