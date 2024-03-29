import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/reservation/reservation_list.dart';
import 'package:salon_app/widgets/button.dart';

class AddReservation extends StatefulWidget {
  @override
  _AddReservationState createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
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
                  labelText: "Nombre",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 13,
                ),
                CustomTextFormField(
                  labelText: "Apellido",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 13,
                ),
                CustomTextFormField(
                  labelText: "Distrito",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 13,
                ),
                CustomTextFormField(
                  labelText: "Teléfono",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 13,
                ),
                CustomTextFormField(
                  labelText: "Correo electrónico",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 13,
                ),
                CustomTextFormField(
                  labelText: "Hora",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 13,
                ),
                CustomTextFormField(
                  labelText: "Tipo de Servicio",
                  colorLabelText: gradientColor,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 220,
                    height: 50,
                    child: TextButton(
                      onPressed: () => context.go('/home'),
                      child: Text("Registrar"),
                    )),
              ],
            ),
          ),
        ));
  }
}
