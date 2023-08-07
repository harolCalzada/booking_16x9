import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class Slots extends StatelessWidget {
  final DateTime startTime;
  final DateTime endTime;
  const Slots({
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(gradientColor),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 2, color: Color(secondaryColor)),
        ),
        width: 165,
        child: Text(
          "9:00- 10:00 AM",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 15.5,
              fontWeight: FontWeight.w400),
        ));
  }
}
