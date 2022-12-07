import 'package:car_app/screens/home/components/body.dart';
import 'package:car_app/screens/home/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'components/home_screen_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeScreenAppBar("Rent a car"),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
