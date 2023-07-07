import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/reservation.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

class DetailReservation extends StatefulWidget {
  @override
  _DetailReservationState createState() => _DetailReservationState();
}

class _DetailReservationState extends State<DetailReservation> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              context.go('/ReservationService');
            },
          ),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
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
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: CustomNavigationBar(items: [
                    NavigatorBarItem(
                      contentText: "Home",
                      icon: Icons.home,
                      route: '/menu_administrator',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    NavigatorBarItem(
                      contentText: "Reservas",
                      icon: Icons.calendar_today,
                      route: '/ReservationService',
                    ),
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  labelText: "Fecha",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "10-07-23",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Hora",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "10:30",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Nombres",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "Ingrid Calzada Villajuan",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Teléfono",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "957290391",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Correo electrónico",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "ingrid_1995_10@gmail.com",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Tipo de Servicio",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "Corte",
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
