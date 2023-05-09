import 'package:flutter/material.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/forgot_password.dart';
import 'package:salon_app/pages/home.dart';
import 'package:salon_app/pages/login.dart';
import 'package:salon_app/pages/register.dart';
import 'package:salon_app/screens/pokemon_screen.dart';
import 'package:salon_app/screens/provider_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(),
    '/book': (BuildContext context) => BookPage(),
    '/register': (BuildContext context) => RegisterPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/forgot_password': (BuildContext context) => ForgotPassword(),
    '/provider_screen': (BuildContext context) => PokemonListWidget(),
    '/details_screen': (BuildContext context) => PokemonDetails(),
  };
}
