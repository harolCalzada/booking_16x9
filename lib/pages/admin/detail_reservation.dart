import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/widgets/button2.dart';

class DetailReservation extends StatelessWidget {
  const DetailReservation({key});

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
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
                DataColumn(
                  label: Text('Apellidos'),
                ),
                DataColumn(
                  label: Text('Telėfono'),
                ),
                DataColumn(
                  label: Text('Correo'),
                ),
                DataColumn(
                  label: Text('Servicio'),
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("10-06-2023")),
                  DataCell(Text("10:00")),
                  DataCell(GestureDetector(
                      onTap: () {
                        context.go(
                            '/login'); // Reemplaza '/otra_pantalla' con la ruta de tu otra pantalla
                      },
                      child: Text("Ingrid"))),
                  DataCell(Text("Calzada Villajuan")),
                  DataCell(Text("952290391")),
                  DataCell(Text("ingrid_1995_19@gmail.com")),
                  DataCell(Text("Manicure")),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
