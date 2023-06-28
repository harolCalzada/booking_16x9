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
              // Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       ClipOval(
              //         child: Image.asset(
              //           'assets/images/braid4.jpg',
              //           width: 180,
              //           height: 180,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              SizedBox(height: 10),
              Center(
                child: CustomTextFormField(
                  labelText: "Texto de Promociones",
                  colorLabelText: gradientColor,
                  colorHintText: primaryColor,
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: CustomTextFormField(
                  labelText: "Fecha de Promo",
                  colorLabelText: gradientColor,
                  colorHintText: primaryColor,
                ),
              ),
              SizedBox(height: 13),
              DataTable(
                columns: [
                  DataColumn(label: Text('Tipo de Servicio')),
                  DataColumn(label: Text('Descripción')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(InkWell(
                      onTap: () {
                        context.go('/details');
                      },
                      child: Text('Manicure'),
                    )),
                    DataCell(Text('Descripción del Servicio 1')),
                  ]),
                  DataRow(cells: [
                    DataCell(InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/servicio2');
                      },
                      child: Text('Corte'),
                    )),
                    DataCell(Text('Descripción del Servicio 2')),
                  ]),
                  DataRow(cells: [
                    DataCell(InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/servicio3');
                      },
                      child: Text('Pedicure'),
                    )),
                    DataCell(Text('Descripción del Servicio 3')),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class _PromotionsState extends State<Promotions> {
//   List<DataRow> _rows = [
//    DataRow(cells: [
//       DataCell(InkWell(
//         onTap: () {
//           context.go('/succeed_reservation'); // Reemplaza '/succeed_reservation' con la ruta de la pantalla a la que deseas redirigir
//         },
//         child: Text('Promoción 1'),
//       )),
//       DataCell(Text('Corte de pelo')),
//     ]),
//     DataRow(cells: [
//       DataCell(Text('Promoción 2')),
//       DataCell(Text('Manicure')),
//     ]),
//     // Agrega más filas según sea necesario
//   ];