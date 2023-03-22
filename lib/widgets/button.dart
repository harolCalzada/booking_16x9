import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;
  final int colorText;
  final double width;
  final double height;
  final int colorBackground;

  const MyButton({
    Key key,
    this.btnText,
    this.onpressed,
    this.colorBackground,
    this.colorText,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
          child: Text(btnText,
              style: TextStyle(
                  color: Color(colorText ?? 0xff000000),
                  fontSize: 15.5,
                  fontWeight: FontWeight.w400)),
          onPressed: onpressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(colorBackground ?? 0xff000000),
            ),
          )),
      // child: FlatButton(
      //   color: UIData.mainColor,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      //   onPressed: onpressed,
      //   child: Text(btnText, style: TextStyle(color: Colors.white,
      //   fontSize: 15.5,
      //   fontWeight: FontWeight.w400)),
      // ),
    );
  }
}
