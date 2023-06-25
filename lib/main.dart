import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/theme.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/home.dart';
import 'package:salon_app/pages/register.dart';

void main() {
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
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}

GoRouter getApplicationRoutes() {
  final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: '/book',
        builder: (BuildContext context, GoRouterState state) {
          return BookPage();
        },
      ),
      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) {
          return RegisterPage();
        },
      ),
      // Agrega más rutas según tus necesidades
    ],
  );

  return goRouter;
}
