import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class IconServices extends StatelessWidget {
  final String iconUrl;
  final String serviceName;
  final Color textColor;

  const IconServices({
    required this.iconUrl,
    required this.serviceName,
    required this.textColor,
  });
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
            color: Color(backgroundImage),
            border: Border.all(color: Color(secondaryColor)),
          ),
          child: Image.network(iconUrl),
          // child: Image(
          //     // color: Colors.black,
          //     image: AssetImage(imageUrl),
          //     fit: BoxFit.cover),
        ),
        SizedBox(height: 10),
        Text(serviceName, style: TextStyle(color: (textColor), fontSize: 10)),
        SizedBox(height: 10)
      ],
    );
  }
}
