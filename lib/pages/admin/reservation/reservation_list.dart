import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/widgets/button2.dart';

class ReservationService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: ReturnButton(
          icon: Icons.arrow_back,
          iconColor: Colors.black,
          onPressed: () {
            context.go('/SideMenu');
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo-jaus-dorado.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Reservas",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 18, left: 18),
            child: CustomNavigationBar(items: [
              NavigatorBarItem(
                contentText: "Home",
                icon: Icons.home,
                route: '/menu_administrator',
              ),
              Spacer(),
              NavigatorBarItem(
                contentText: "Agregar",
                icon: Icons.add,
                route: '/AddReservation',
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    // scrollDirection: Axis.vertical,

                    child: DataTable(
                      columns: [
                        DataColumn(
                          label: Text('Fecha'),
                        ),
                        DataColumn(
                          label: Text('Hora'),
                        ),
                        DataColumn(
                          label: Text('Nombre'),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("10-06-2023")),
                          DataCell(Text("10:00")),
                          DataCell(GestureDetector(
                            onTap: () {
                              context.go(
                                  '/DetailReservation'); // Reemplaza '/otra_pantalla' con la ruta de tu otra pantalla
                            },
                            child: Text("Ingrid"),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("05-06-2023")),
                          DataCell(Text("1:00")),
                          DataCell(Text("Anderson")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("07-06-2023")),
                          DataCell(Text("12:00")),
                          DataCell(Text("Harol")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("09-06-2023")),
                          DataCell(Text("2:00")),
                          DataCell(Text("Luis")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("18-06-2023")),
                          DataCell(Text("3:00")),
                          DataCell(Text("America")),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: CustomTextButton(
                  text: "Anterior",
                  onPressed: () {
                    context.go('/'); // Agrega la navegación deseada
                  },
                ),
              ),
              CustomTextButton(
                text: "Siguiente",
                onPressed: () {
                  context.go('/'); // Agrega la navegación deseada
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomNavigationBar extends StatelessWidget {
  final List<Widget> items;

  const CustomNavigationBar({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 350,
      // height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: items,
      ),
    );
  }
}

class NavigatorBarItem extends StatelessWidget {
  final String contentText;
  final IconData icon;
  final String route;

  const NavigatorBarItem(
      {required this.contentText, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(
            route); // Reemplaza '/logout' con la ruta de la página a la que deseas redirigir
      },
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 4),
          Text(contentText),
        ],
      ),
    );
  }
}
