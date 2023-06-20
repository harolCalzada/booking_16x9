import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegisterPage> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(primaryGray),
        ),
        backgroundColor: Color(primaryGray),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
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
                        width: 120,
                        height: 120,
                      ),
                    ),
                    CustomSelectButton(
                      labelText: "Nombre",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su nombre",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomSelectButton(
                      labelText: "Apellido",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su apellido",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomSelectButton(
                      labelText: "Teléfono",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su teléfono",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomSelectButton(
                      labelText: "Correo electrónico",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su correo electrónico",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomSelectButton(
                      labelText: "Distrito",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su distrito",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 310,
                      height: 50,
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "Escribe tu contraseña",
                          hintStyle: TextStyle(color: Color(primaryColor)),
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(
                              color: Color(gradientColor),
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(gradientColor)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(gradientColor)),
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
                              color: Color(gradientColor),
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
                    SizedBox(height: 50.0),
                    SizedBox(
                        width: 220,
                        height: 50,
                        child: TextButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed('/home'),
                          child: Text("Registrarse"),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
