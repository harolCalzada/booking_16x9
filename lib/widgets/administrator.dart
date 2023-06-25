import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              context.go('/administrator');
            },
          ),
        ),
        body: NavigationDrawer(
          backgroundColor: Colors.white,
          selectedIndex: navDrawerIndex,
          onDestinationSelected: (value) {
            setState(() {
              navDrawerIndex = value;
            });
          },
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
            ),
            NavigationDrawerDestination(
                icon: const Icon(Icons.qr_code_2),
                label: const Text("Escanear QR")),
            NavigationDrawerDestination(
                icon: const Icon(Icons.calendar_today),
                label: const Text("Reservas")),
            NavigationDrawerDestination(
                icon: const Icon(Icons.brush), label: const Text("Servicios")),
            NavigationDrawerDestination(
                icon: const Icon(Icons.local_offer),
                label: const Text("Promociones")),
            NavigationDrawerDestination(
                icon: const Icon(Icons.person), label: const Text("Usuarios")),
            NavigationDrawerDestination(
                icon: const Icon(Icons.analytics),
                label: const Text("Reporte")),
            NavigationDrawerDestination(
                icon: const Icon(Icons.exit_to_app),
                label: const Text("Cerrar Sesión")),
            // const Padding(
            //   padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            //   // child: Divider(),
            // )
          ],
        ));
  }
}
