import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class MyColumn extends StatelessWidget {
  final String columnImg, columnTxt;
  final Color columnBg;
  final Color textColor;

  const MyColumn({Key key, this.columnImg, this.columnTxt, this.columnBg, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(gradientcolor),
          ),
          child: Image(color: Colors.black,image: AssetImage(columnImg), fit: BoxFit.contain),
        ),
        SizedBox(height: 10),
        Text(columnTxt,style:TextStyle(color: (textColor))),
        SizedBox(height: 10)
      ],
    );
  }
}
