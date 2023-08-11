import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/pages/admin/reservation.dart';
import 'package:salon_app/widgets/service_section.dart';

import '../../widgets/button2.dart';

class ServicesData extends StatelessWidget {
  final String name;

  ServicesData({
    required this.name,
  });

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                  "Servicios",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
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
                    route: '/AddService',
                  ),
                ]),
              ),

              ServicesSection(),

              // Center(
              //   child: DataTable(
              //     columns: [
              //       DataColumn(
              //         label: Text('Nombre del Servicio'),
              //       ),
              //     ],
              //     rows: [
              //       DataRow(cells: [
              //         DataCell(Text(name)),
              //       ]),
              //       DataRow(cells: [
              //         DataCell(Text(name)),
              //       ]),
              //       // DataRow(cells: [
              //       //   DataCell(Text("Tinte")),
              //       //   DataCell(Text("28-08-23")),
              //       // ]),
              //       // DataRow(cells: [
              //       //   DataCell(Text("Pedicure")),
              //       //   DataCell(Text("29-08-23")),
              //       // ]),
              //       // DataRow(cells: [
              //       //   DataCell(Text("Makeup")),
              //       //   DataCell(Text("30-08-23")),
              //       // ]),
              //     ],
              //   ),
              // ),
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
        ),
      ),
    );
  }
}
