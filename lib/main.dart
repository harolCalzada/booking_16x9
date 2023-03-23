import 'package:flutter/material.dart';
import 'package:salon_app/constants/theme.dart';
import 'package:salon_app/pages/intro.dart';
import 'package:salon_app/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: IntroPage(),
      routes: getApplicationRoutes(),
    );
  }
}
