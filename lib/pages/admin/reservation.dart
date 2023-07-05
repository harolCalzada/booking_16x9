import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/widgets/button2.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class ReservationService extends StatelessWidget {
  const ReservationService({Key key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo-jaus-dorado.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 50),
          NavigationBarItem(),
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
              CustomTextButton(
                text: "Anterior",
                onPressed: () {
                  context.go('/'); // Agrega la navegación deseada
                },
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

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: 18),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'opcion1',
                child: Row(
                  children: [
                    Icon(Icons.home),
                    const SizedBox(width: 5),
                    Text('Inicio'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'opcion2',
                child: Row(
                  children: [
                    Icon(Icons.assignment),
                    const SizedBox(width: 5),
                    Text('Opción 2'),
                  ],
                ),
              ),
            ],
            onSelected: (String value) {
              if (value == 'opcion1') {
                // Acción de la opción 1
              } else if (value == 'opcion2') {
                // Acción de la opción 2
              }
            },
            child: Row(
              children: [
                Icon(Icons.home),
                const SizedBox(width: 5),
                Text('Inicio'),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Container(
            height: 1,
            width: 30,
            child: Divider(
              color: Colors.black,
              thickness: 2,
            ),
          ),
          const SizedBox(width: 5),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'opcion1',
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    const SizedBox(width: 5),
                    Text('Reserva'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'opcion2',
                child: Row(
                  children: [
                    Icon(Icons.assignment),
                    const SizedBox(width: 5),
                    Text('Opción 2'),
                  ],
                ),
              ),
            ],
            onSelected: (String value) {
              if (value == 'opcion1') {
                // Acción de la opción 1
              } else if (value == 'opcion2') {
                // Acción de la opción 2
              }
            },
            child: Row(
              children: [
                Icon(Icons.calendar_today),
                const SizedBox(width: 5),
                Text('Reserva'),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 30,
            child: Divider(
              color: Colors.black,
              thickness: 2,
            ),
          ),
          const SizedBox(width: 5),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'opcion1',
                child: Row(
                  children: [
                    Icon(Icons.add),
                    const SizedBox(width: 5),
                    Text('Agregar'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'opcion2',
                child: Row(
                  children: [
                    Icon(Icons.assignment),
                    const SizedBox(width: 5),
                    Text('Opción 2'),
                  ],
                ),
              ),
            ],
            onSelected: (String value) {
              if (value == 'opcion1') {
                // Acción de la opción 1
              } else if (value == 'opcion2') {
                // Acción de la opción 2
              }
            },
            child: Row(children: [
              Icon(Icons.add),
              const SizedBox(width: 5),
              Text("Agregar"),
            ]),
          ),
        ]));
  }
}
