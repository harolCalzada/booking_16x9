import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';

class CustomElevatedButtonRounded extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const CustomElevatedButtonRounded({Key key, this.btnText, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
