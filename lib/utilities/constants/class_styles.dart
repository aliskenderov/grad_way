import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    path.lineTo(0, height);
    path.quadraticBezierTo(
        width * 0.005, height * 0.55, width * 0.25, height * 0.5);
    path.lineTo(width * .7, height * .5);
    path.quadraticBezierTo(width, height * .5, width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
