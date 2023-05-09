import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salon_app/constants/theme.dart';
import 'package:salon_app/pages/intro.dart';
import 'package:salon_app/routes.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: IntroPage(),
      routes: getApplicationRoutes(),
    );
  }
}
