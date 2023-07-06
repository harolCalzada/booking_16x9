import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/reservation.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

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
              }),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
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
                      tileMode: TileMode.mirror),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          CustomNavigationBar(items: [
                            SizedBox(
                              width: 40,
                            ),
                            NavigatorBarItem(
                              contentText: "Home",
                              icon: Icons.home,
                              route: '/menu_administrator',
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            NavigatorBarItem(
                              contentText: "Usuario",
                              icon: Icons.calendar_today,
                              route: '/Users',
                            ),
                            SizedBox(
                              width: 40,
                            ),
                          ]),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: DataTable(
                              columns: [
                                DataColumn(
                                  label: Text('Nombres'),
                                ),
                                // DataColumn(
                                //   label: Text('Fecha '),
                                // ),
                                DataColumn(
                                  label: Text('Correo'),
                                ),
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(GestureDetector(
                                      onTap: () {
                                        context.go(
                                          '/DetailUsers',
                                        ); // Reemplaza '/otra_pantalla' con la ruta de tu otra pantalla
                                      },
                                      child: Text("Ingrid Calzada Solano"))),
                                  // DataCell(Text("10-07-23")),
                                  DataCell(Text("ingrid10@gmail.com")),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("Anderson López Meza")),
                                  // DataCell(Text("12-07-23")),
                                  DataCell(Text("ander10@gmail.com")),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("Valerie Meza Calzada")),
                                  // DataCell(Text("13-07-23")),
                                  DataCell(Text("ingrid10@gmail.com")),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("Alison Vega García")),
                                  // DataCell(Text("26-07-23")),
                                  DataCell(Text("ali10@gmail.com")),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("José Hualpay Oré")),
                                  // DataCell(Text("30-07-23")),
                                  DataCell(Text("jose18@gmail.com")),
                                ]),
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
                                      context.go(
                                          '/'); // Agrega la navegación deseada
                                    },
                                  ),
                                  CustomTextButton(
                                    text: "Siguiente",
                                    onPressed: () {
                                      context.go(
                                          '/'); // Agrega la navegación deseada
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )))));
  }
}
