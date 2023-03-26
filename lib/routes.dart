import 'package:flutter/material.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/home.dart';
import 'package:salon_app/pages/login.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(),
    '/book': (BuildContext context) => BookPage(),
    '/register': (BuildContext context) => RegisterPage(),
  };
}
