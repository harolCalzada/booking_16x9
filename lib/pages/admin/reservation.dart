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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              btnText: 'Agregar ',
              height: 30,
              width: 140,
              colorBackground: Colors.black.value,
              colorText: gradientColor,
              onpressed: () => context.go('/'),
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
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("10-06-2023")),
                    DataCell(Text("10:00")),
                    DataCell(Text("Ingrid")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("03-06-2023")),
                    DataCell(Text("12:00")),
                    DataCell(Text("Anderson")),
                  ]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
      ),
    );
  }
}
