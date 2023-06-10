import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/forgot_password.dart';
import 'package:salon_app/pages/register.dart';
import 'package:salon_app/widgets/button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(secondarycolor),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(secondarycolor), // Color de fondo del Container
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
                    "¡Bienvenido a Jaus!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        height: 1.8,
                        color: Color(gradientcolor)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ingresa a tu cuenta",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 19, height: 1.8, color: Color(gradientcolor)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomSelectButton(
                    labelText: "Correo electrónico",
                    colorLabelText: gradientcolor,
                    hintText: "Escriba su correo electronico",
                    colorHintText: primarycolor,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 310,
                    height: 50,
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: "Escribe tu contraseña",
                        hintStyle: TextStyle(color: Color(primarycolor)),
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(
                            color: Color(gradientcolor),
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(gradientcolor)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(gradientcolor)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // Agregar el icono de ojo aquí
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(gradientcolor),
                            semanticLabel: _obscureText
                                ? 'Mostrar contraseña'
                                : 'Ocultar contraseña',
                          ),
                        ),
                      ),
                      obscureText: _obscureText,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Por favor ingrese su contraseña';
                        }
                        if (value.length < 6) {
                          return 'La contraseña debe tener al menos 6 caracteres';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "¿Olvidaste tu contraseña?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 12, color: Color(gradientcolor)),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 220,
                      height: 50,
                      child: TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/home'),
                        child: Text("Ingresar"),
                      )),
                  SizedBox(height: 20.0),
                  Text(
                    '¿Aún no tienes una cuenta creada?',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(gradientcolor)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Text(
                      "Registrarme",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(gradientcolor)),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}