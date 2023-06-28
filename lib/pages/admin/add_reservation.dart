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
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white, // Color de inicio del gradiente
                    Colors.white, // Color de fin del gradiente
                  ],
                  begin: Alignment.topRight, // Punto de inicio del gradiente
                  end: Alignment.bottomRight, // Punto de fin del gradiente
                  // Opcional: puedes ajustar los stops y tileMode según tus necesidades
                  stops: [0.0, 1.0],
                  tileMode: TileMode.mirror),
            ), // Color de fondo del Container

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
                        width: 70,
                        height: 70,
                      ),
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
            ),
          ),
        ));
  }
}
