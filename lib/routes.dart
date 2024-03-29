import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/pages/admin/deals/deals_add.dart';
import 'package:salon_app/pages/admin/reservation/reservation_add.dart';
import 'package:salon_app/pages/admin/services/services_detail.dart';
import 'package:salon_app/pages/admin/user/user_detail.dart';
import 'package:salon_app/pages/admin/deals/deals_list.dart';
import 'package:salon_app/pages/admin/reservation/reservation_list.dart';
import 'package:salon_app/pages/admin/services/services_list.dart';
import 'package:salon_app/pages/admin/services/services_add.dart';
import 'package:salon_app/pages/admin/user/users.dart';
import 'package:salon_app/pages/book.dart';
import 'package:salon_app/pages/forgot_password.dart';
import 'package:salon_app/pages/home.dart';
import 'package:salon_app/pages/intro.dart';
import 'package:salon_app/pages/login.dart';
import 'package:salon_app/pages/register.dart';
import 'package:salon_app/pages/confirm_reservation.dart';
import 'package:salon_app/pages/succeed_reservation.dart';
import 'package:salon_app/widgets/menu_administrator.dart';
import 'pages/admin/reservation/reservation_detail.dart';

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
          return HomePage(context);
        },
      ),
      GoRoute(
        path: '/book',
        builder: (BuildContext context, GoRouterState state) {
          return BookPage();
        },
      ),

      GoRoute(
        path: '/menu_administrator',
        builder: (BuildContext context, GoRouterState state) {
          return SideMenu();
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
        path: '/ReservationService',
        builder: (BuildContext context, GoRouterState state) {
          return ReservationService();
        },
      ),

      GoRoute(
        path: '/AddReservation',
        builder: (BuildContext context, GoRouterState state) {
          return AddReservation();
        },
      ),

      GoRoute(
        path: '/DetailReservation',
        builder: (BuildContext context, GoRouterState state) {
          return DetailReservation();
        },
      ),

      GoRoute(
        path: '/ServicesData',
        builder: (BuildContext context, GoRouterState state) {
          return ServicesData(
            name: "hola",
          );
        },
      ),
      GoRoute(
        path: '/AddService',
        builder: (BuildContext context, GoRouterState state) {
          return ServicesAdd();
        },
      ),

      GoRoute(
        path: '/ListDeals',
        builder: (BuildContext context, GoRouterState state) {
          return ListDeals();
        },
      ),
      GoRoute(
        path: '/AddDeals',
        builder: (BuildContext context, GoRouterState state) {
          return AddDeals();
        },
      ),
      GoRoute(
        path: '/SideMenu',
        builder: (BuildContext context, GoRouterState state) {
          return SideMenu();
        },
      ),

      GoRoute(
        path: '/Users',
        builder: (BuildContext context, GoRouterState state) {
          return UsersPage();
        },
      ),

      GoRoute(
        path: '/DetailUsers',
        builder: (BuildContext context, GoRouterState state) {
          return DetailUsers();
        },
      ),

      GoRoute(
        name: "serviceDetail",
        path: '/service-detail',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return ServicesDetail(id: id!);
        },
      )
    ],
  );

  return goRouter;
}
