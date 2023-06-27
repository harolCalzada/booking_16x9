import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';

class Promotions extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<Promotions> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              context.go('/SideMenu'); // Redirige a la pantalla anterior
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
                    Colors.white, // Color de inicio del gradiente
                    Colors.white, // Color de fin del gradiente
                  ],
                  begin: Alignment.topRight, // Punto de inicio del gradiente
                  end: Alignment.bottomRight, // Punto de fin del gradiente
                  // Opcional: puedes ajustar los stops y tileMode según tus necesidades
                  stops: [0.0, 1.0],
                  tileMode: TileMode.mirror),
            ), // Color de fondo del Container

            child: Form(
              key: _formKey,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo-jaus-dorado.png',
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/braid4.jpg',
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        CustomTextFormField(
                          labelText: "Texto de Promociones",
                          colorLabelText: gradientColor,
                          // hintText: "Escriba su nombre",
                          colorHintText: primaryColor,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          // width: 300,
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                            ),
                            onPressed: () => context.go('/home'),
                            child: Text(
                              "FECHA DE PROMO",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                      ]

                          // CustomTextFormField(
                          //   labelText: "Hora de Reservación",
                          //   colorLabelText: gradientColor,
                          //   // hintText: "Escriba su correo electrónico",
                          //   colorHintText: primaryColor,
                          // ),

                          // SizedBox(
                          //     width: 220,
                          //     height: 50,
                          //     child: TextButton(
                          //       onPressed: () => context.go('/home'),
                          //       child: Text("Registrarse"),
                          //     )),
                          ))
                ],
              ),
            ),
          ),
        ));
  }
}
