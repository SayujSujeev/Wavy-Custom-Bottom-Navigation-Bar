import 'package:flutter/material.dart';
import 'package:wavy_bottom_nav_bar/screens/home/components/wavy_clipper.dart';

class WavyBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      child: ClipPath(
        clipper: WavyClipper(),
        child: Container(
          height: size.height * 0.09,
          width: size.width,
          color: Colors.teal[800],
          padding: EdgeInsets.only(top: 4),
        ),
      ),
    );
  }
}
