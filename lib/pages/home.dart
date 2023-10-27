import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';
import 'package:salon_app/widgets/deal.dart';
import 'package:salon_app/widgets/deals_section.dart';
import 'package:salon_app/widgets/icon_service.dart';
import 'package:salon_app/widgets/modal.dart';
import 'package:salon_app/widgets/service_section.dart';
import 'package:salon_app/widgets/specialist_column.dart';

class HomePage extends StatefulWidget {
  final BuildContext context; // Agrega este campo

  HomePage(this.context); // Actualiza el constructor

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(primaryGray),
          leading: Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: PopupMenuButton(
              color: Color(gradientColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              icon: Icon(
                Icons.short_text_rounded,
                color: Color(gradientColor),
                size: 29,
              ),
              offset: Offset(0, 50),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Container(
                      height: 40, // Ajusta este valor según tus necesidades
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Color(primaryGray),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Perfil',
                                style: TextStyle(color: Color(primaryGray)),
                              ),
                            ],
                          ),
                          Divider(
                            // Agrega la línea divisoria
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                    value: 'opcion1',
                  ),
                  PopupMenuItem(
                    child: Container(
                      height: 40, // Ajusta este valor según tus necesidades
                      child: Column(
                        children: [
                          Row(children: [
                            Icon(
                              Icons.calendar_today,
                              color: Color(primaryGray),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Reservas',
                              style: TextStyle(color: Color(primaryGray)),
                            ),
                          ]),
                          Divider(
                            // Agrega la línea divisoria
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                    value: 'opcion2',
                  ),
                  PopupMenuItem(
                    child: Container(
                      height: 40, // Ajusta este valor según tus necesidades
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.go(
                                  '/login'); // Reemplaza '/logout' con la ruta de la página a la que deseas redirigir
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.exit_to_app,
                                  color: Color(primaryGray),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Cerrar sesión',
                                  style: TextStyle(color: Color(primaryGray)),
                                ),
                              ],
                            ),
                            // Divider(
                            //   // Agrega la línea divisoria
                            //   color: Colors.grey,
                            //   thickness: 1,
                            // ),
                          )
                        ],
                      ),
                    ),
                    value: 'opcion3',
                  ),
                ];
              },
              onSelected: (value) {
                // Lógica para manejar la opción seleccionada
                if (value == 'opcion1') {
                  // Acción para la opción 1
                } else if (value == 'opcion2') {
                  // Acción para la opción 2
                }
              },
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(primaryGray), // Color de inicio del gradiente
                  Color(secondaryGray), // Color de fin del gradiente
                ],
                begin: Alignment.topRight, // Punto de inicio del gradiente
                end: Alignment.bottomRight, // Punto de fin del gradiente
                // Opcional: puedes ajustar los stops y tileMode según tus necesidades
                stops: [0.0, 1.0],
                tileMode: TileMode.mirror),
          ),
          width: screen_size_width,
          height: screen_size_height,
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: screen_size_height * .2,
                    width: screen_size_width,
                    child: DealSection(),
                  ),
                  SizedBox(height: 50),
                  ServicesSectionWidget(),
                  SizedBox(height: 15),
                  NextReservationSectionWidget()
                ]),
          ),
        ));
  }
}

class NextReservationSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Próxima cita",
            style: TextStyle(
              color: Color(gradientColor),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: double.infinity,
              height: 140,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(secondaryColor),
                border: Border.all(color: Color(gradientColor), width: 1),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fecha:",
                        style: TextStyle(
                          color: Color(gradientColor),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "16 de Julio del 2023",
                        style: TextStyle(
                          color: Color(gradientColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hora:",
                        style: TextStyle(
                            color: Color(gradientColor),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5:00 PM",
                        style: TextStyle(
                          color: Color(gradientColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dirección:",
                        style: TextStyle(
                          color: Color(gradientColor),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          "Av. José Larco 999, Miraflores",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(gradientColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    btnText: 'Ver QR',
                    height: 30,
                    width: 90,
                    colorBackground: Colors.black.value,
                    colorText: gradientColor,
                    onpressed: () => context.go('/succeed_reservation'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
