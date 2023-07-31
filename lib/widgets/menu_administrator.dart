import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/scaner.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salon_app/providers/menu_provider.dart';

class SideMenu extends ConsumerStatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends ConsumerState<SideMenu> {
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    final selectMenu = ref.watch(selectedMenuProvider);
    int navDrawerIndex = ref.watch(selectedMenuProvider);

    // final selectedMenuProvider = Provider<int>((ref) => 0);

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
        // selectedItemColor:Colors.red,

        onDestinationSelected: (value) {
          setState(() {});

          // Navegar a la pantalla correspondiente según el índice seleccionado
          switch (value) {
            case 0:
              ref.read(selectedMenuProvider.notifier).state = 0;

              context.go('/QRScanScreen');

              break;
            case 1:
              ref.read(selectedMenuProvider.notifier).state = 1;
              context.go('/ReservationService');

              break;
            case 2:
              ref.read(selectedMenuProvider.notifier).state = 2;
              context.go('/ServicesData');
              break;
            case 3:
              ref.read(selectedMenuProvider.notifier).state = 3;
              context.go('/Promotions');
              break;
            case 4:
              ref.read(selectedMenuProvider.notifier).state = 4;
              context.go('/Users');
              break;

            case 6:
              ref.read(selectedMenuProvider.notifier).state = 5;
              context.go('/login');

              break;
          }
        },

        //  ref.read(selectedMenuProvider).state = value; // Actualizar el valor del proveedor  // Actualizar el valor del proveedor

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
