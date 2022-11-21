import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';

class CustomIconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final double iconSize;
  final double fontSize;
  const CustomIconWidget({
    super.key,
    required this.icon,
    required this.text,
     this.iconSize = 30,
     this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Icon(
            icon,
            color: kColorWhite,
            size: iconSize,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              text,
              style:  TextStyle(fontSize: fontSize),
            ),
          )
        ],
      ),
    );
  }
}
