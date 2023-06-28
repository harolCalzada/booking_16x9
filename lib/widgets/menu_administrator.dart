import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/scaner.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
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
            context.go('/home');
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

          // Navegar a la pantalla correspondiente según el índice seleccionado
          switch (value) {
            case 0:
              context.go('/QR');

              break;
            case 1:
              context.go('/ReservationService');

              break;
            case 2:
              context.go('/Services');
              break;
            case 3:
              context.go('/Promotions');
              break;
            case 4:
              context.go('/Users');
              break;
              // case 5:
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => ReporteScreen()),
              //   );
              break;
            case 6:
              context.go('/login');

              break;
          }
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.qr_code_2),
            label: const Text("Escanear QR"),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.calendar_today),
            label: const Text("Reservas"),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.brush),
            label: const Text("Servicios"),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.local_offer),
            label: const Text("Promociones"),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.person),
            label: const Text("Usuarios"),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.analytics),
            label: const Text("Reporte"),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.exit_to_app),
            label: const Text("Cerrar Sesión"),
          ),
        ],
      ),
    );
  }
}
