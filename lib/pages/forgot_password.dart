import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(primaryGray),
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
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Text(
                    "¿Olvidaste tu contraseña?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        height: 1.8,
                        color: Color(gradientColor)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No te preocupes, es posible recuperarla",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 1.8,
                        color: Color(gradientColor)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 320,
                    height: 130,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Card(
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 30, top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                color: Color(gradientColor),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 130,
                              width: 267,
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Por favor ingresa tu correo electrónico que ingresaste al crear tu cuenta en la App,en unos minutos recibirás un correo para recuperar tu contraseña.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(primaryColor),
                                      height: 1.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          right: 250,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 90,
                              width: 80,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/padlock.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFormField(
                    labelText: "Correo electrónico",
                    colorLabelText: gradientColor,
                    hintText: "Escriba su correo electronico",
                    // colorHintText: primaryColor,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 220,
                      height: 50,
                      child: TextButton(
                        onPressed: () => context.go('/home'),
                        child: Text("Enviar correo"),
                      )),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ));
  }
}
