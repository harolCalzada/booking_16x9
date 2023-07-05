import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  btnText: 'Agregar ',
                  height: 30,
                  width: 140,
                  colorBackground: Colors.black.value,
                  colorText: gradientColor,
                  onpressed: () => context.go('/AddReservation'),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
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
                      child: Text("Ingrid"))),
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
                ])
              ],
            ),
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
