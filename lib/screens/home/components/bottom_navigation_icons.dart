import 'package:flutter/material.dart';
import 'package:wavy_bottom_nav_bar/screens/home/components/bottom_icons.dart';

class BottomNavigationIcons extends StatefulWidget {
  @override
  _BottomNavigationIconsState createState() => _BottomNavigationIconsState();
}

class _BottomNavigationIconsState extends State<BottomNavigationIcons> {

  int bottomNavigationBarItemIndex = 1;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: size.width * 0.02,
      right: size.width * 0.02,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomIcon(
            onPressed: (){
              setState(() {
                bottomNavigationBarItemIndex = 0;
              });
            },
            bottomIcons: bottomNavigationBarItemIndex == 0 ? true : false,
            icons: Icons.bubble_chart,
            text: "Focus",
          ),
          BottomIcon(
            onPressed: (){
              setState(() {
                bottomNavigationBarItemIndex = 1;
              });
            },
            bottomIcons: bottomNavigationBarItemIndex == 1 ? true : false,
            icons: Icons.accessibility_new,
            text: "Relax",
          ),
          BottomIcon(
            onPressed: (){
              setState(() {
                bottomNavigationBarItemIndex = 2;
              });
            },
            bottomIcons: bottomNavigationBarItemIndex == 2 ? true : false,
            icons: Icons.nightlight_round,
            text: "Sleep",
          ),
        ],
      ),
    );
  }
}
