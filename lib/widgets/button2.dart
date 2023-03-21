import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';

class MyButton2 extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton2({Key key, this.btnText, this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(primarycolor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        onPressed: onpressed,
        child: Text(btnText,
            style: TextStyle(
                color: Color(gradientcolor),
                fontSize: 15.5,
                fontWeight: FontWeight.w400)),
      ),
      // child: TextButton(

      //     // color: UIData.mainColor,
      //     // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      //     // onPressed: onpressed,
      //     // child: Text(btnText, style: TextStyle(color: Colors.white,
      //     // fontWeight: FontWeight.w400)),
      //     ),
    );
  }
}
