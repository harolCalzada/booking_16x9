import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/constants/theme.dart';
import 'package:salon_app/firebase_options.dart';
import 'package:salon_app/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter goRouter = getApplicationRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      routerConfig: goRouter,
      // routerDelegate: goRouter.routerDelegate,
      // routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
