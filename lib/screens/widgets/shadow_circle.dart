import 'package:flutter/material.dart';

class ShadowCircle extends StatelessWidget {
  ShadowCircle({
    Key? key,
    required this.colour,
    required this.radius,
    required this.icon,required this.iconColor
  }) : super(key: key);
  double radius;
  Color colour;
  IconData icon;
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              blurRadius: 4,
              color: Colors.grey.shade400,
              spreadRadius: 1)
        ],
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor:colour,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}