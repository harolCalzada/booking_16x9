import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
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
          backgroundColor: Colors.white,
        ),
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
                CustomTextFormField(
                  labelText: "Nombres",
                  colorTextStyle: Colors.black,
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
