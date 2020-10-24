import 'package:flutter/material.dart';
import 'package:wavy_bottom_nav_bar/screens/home/components/bottom_navigation_icons.dart';
import 'package:wavy_bottom_nav_bar/screens/home/components/wavy_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [

            WavyBottomBar(),

            BottomNavigationIcons(),

          ],
        ),
      ),
    );
  }
}
