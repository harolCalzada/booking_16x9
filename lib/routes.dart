import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/pages/admin/promotions.dart';
import 'package:salon_app/pages/admin/reservation.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/forgot_password.dart';
import 'package:salon_app/pages/home.dart';
import 'package:salon_app/pages/intro.dart';
import 'package:salon_app/pages/login.dart';
import 'package:salon_app/pages/register.dart';
import 'package:salon_app/pages/confirm_reservation.dart';
import 'package:salon_app/pages/succeed_reservation.dart';
import 'package:salon_app/widgets/menu_administrator.dart';
import 'pages/admin/scaner.dart';

// import 'package:salon_app/widgets/administrator.dart';
// import 'package:salon_app/widgets/administrator.dart';

GoRouter getApplicationRoutes() {
  final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return IntroPage();
        },
      ),

      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) {
          return RegisterPage();
        },
      ),

      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return LoginPage();
        },
      ),
      GoRoute(
        path: '/password',
        builder: (BuildContext context, GoRouterState state) {
          return ForgotPassword();
        },
      ),

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

      // Agrega más rutas según tus necesidades
      GoRoute(
        path: '/confirm_reservation',
        builder: (BuildContext context, GoRouterState state) {
          return ConfirmReservation();
        },
      ),
      GoRoute(
        path: '/succeed_reservation',
        builder: (BuildContext context, GoRouterState state) {
          return SucceedReservation();
        },
      ),

      GoRoute(
        path: '/menu_administrator',
        builder: (BuildContext context, GoRouterState state) {
          return SideMenu();
        },
      ),

      GoRoute(
        path: '/QR',
        builder: (BuildContext context, GoRouterState state) {
          // return ScanQRScreen();
        },
      ),

      GoRoute(
        path: '/ReservationService',
        builder: (BuildContext context, GoRouterState state) {
          return ReservationService();
        },
      ),

      GoRoute(
        path: '/Services',
        builder: (BuildContext context, GoRouterState state) {
          return Services();
        },
      ),

      GoRoute(
        path: '/Promotions',
        builder: (BuildContext context, GoRouterState state) {
          return Promotions();
        },
      ),

      GoRoute(
        path: '/SideMenu',
        builder: (BuildContext context, GoRouterState state) {
          return SideMenu();
        },
      ),
    ],
  );

  return goRouter;
}
