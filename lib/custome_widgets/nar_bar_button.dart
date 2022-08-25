import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarButton extends StatelessWidget {
  NavBarButton({
    Key? key,
    required this.width,
    required this.isYes,
    required this.label,
    this.onHover,
  }) : super(key: key);

  final double width;
  final bool isYes;
  final String label;
  var onHover;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: onHover,
      child: Container(
        //color: Colors.white,
        padding: EdgeInsets.symmetric(
            vertical: width * 0.01, horizontal: width * 0.015),
        child: Text(
          label,
          style: TextStyle(
            fontSize: width * 0.013,
            color: isYes ? Colors.blueAccent : Colors.white,
            decoration: isYes ? TextDecoration.underline : TextDecoration.none,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}