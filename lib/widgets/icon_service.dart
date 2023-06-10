import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class IconServices extends StatelessWidget {
  final String columnImg, columnTxt;
  final Color columnBg;
  final Color textColor;
  final Color colorImg;

  const IconServices(
      {Key key,
      this.columnImg,
      this.columnTxt,
      this.columnBg,
      this.textColor,
      this.colorImg})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 68,
          height: 68,
          // padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(backgroundimage),
            border: Border.all(color: Color(secondarycolor)),
          ),
          child: Image(
              // color: Colors.black,
              image: AssetImage(columnImg),
              fit: BoxFit.cover),
        ),
        SizedBox(height: 10),
        Text(columnTxt, style: TextStyle(color: (textColor), fontSize: 10)),
        SizedBox(height: 10)
      ],
    );
  }
}
