import 'package:flutter/material.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(),
    '/book': (BuildContext context) => BookPage(),
  };
}
