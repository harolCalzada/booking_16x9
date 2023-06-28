import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

class Promotions extends StatelessWidget {
  const Promotions({Key key});

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
            child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  btnText: 'Agregar nuevo servicio',
                  height: 30,
                  width: 200,
                  colorBackground: Colors.black.value,
                  colorText: gradientColor,
                  onpressed: () => context.go('/'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo-jaus-dorado.png',
                  width: 75,
                  height: 75,
                ),
              ),
              Center(
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text('Nombre del Servicio'),
                    ),
                    DataColumn(
                      label: Text('Fecha '),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text("Corte")),
                      DataCell(Text("10-07-23")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Manicure")),
                      DataCell(Text("10-08-23")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Tinte")),
                      DataCell(Text("28-08-23")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pedicure")),
                      DataCell(Text("29-08-23")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Makeup")),
                      DataCell(Text("30-08-23")),
                    ])
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                ),
              )
            ],
          ),
        )));
  }
}
