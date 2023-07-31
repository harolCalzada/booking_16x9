import 'package:flutter/material.dart';

import 'package:salon_app/widgets/button2.dart';

class Deals extends StatefulWidget {
  String imageUrl;
  String textButton;
  String title;
  String? urlButton;

  Deals({
    required this.imageUrl,
    required this.textButton,
    required this.title,
    this.urlButton,
  });

  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken,
          ),
          image: Image.network(widget.imageUrl).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            widget.title,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          CustomElevatedButtonRounded(
            btnText: widget.textButton,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
