import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/slots.dart';

class SlotsSection extends StatelessWidget {
  const SlotsSection({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        runSpacing: 22,
        spacing: 8,
        children: <Widget>[
          Slots(startTime: DateTime.now(), endTime: DateTime.now()),
          Slots(startTime: DateTime.now(), endTime: DateTime.now()),
          Slots(startTime: DateTime.now(), endTime: DateTime.now()),
          Slots(startTime: DateTime.now(), endTime: DateTime.now()),
        ],
      ),
    );
  }
}

Widget buttonTime(timeText, btnBg, timeBtnColor) {
  return Container(
    height: 40,
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnBg,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(width: 2, color: Color(secondaryColor))),
      ),
      onPressed: () {},
      child: Text(
        timeText,
        style: TextStyle(
            color: timeBtnColor, fontSize: 15.5, fontWeight: FontWeight.w400),
      ),
    ),
  );
}
