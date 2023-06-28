import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';

import '../../widgets/button2.dart';
import '../../widgets/icon_service.dart';
import '../../widgets/modal.dart';

// class Service extends StatefulWidget {
//   @override
//   _ServicePageState createState() => _ServicePageState();
// }

// class _ServicePageState extends State<Service> {
//   bool _obscureText = true;
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: ReturnButton(
//               icon: Icons.arrow_back,
//               iconColor: Colors.black,
//               onPressed: () {
//                 context.go('/SideMenu');
//               }),
//         ),
//         body: SingleChildScrollView(
//             child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       colors: [
//                         Colors.white, // Color de inicio del gradiente
//                         Colors.white, // Color de fin del gradiente
//                       ],
//                       begin:
//                           Alignment.topRight, // Punto de inicio del gradiente
//                       end: Alignment.bottomRight, // Punto de fin del gradiente
//                       // Opcional: puedes ajustar los stops y tileMode según tus necesidades
//                       stops: [0.0, 1.0],
//                       tileMode: TileMode.mirror),
//                 ), // Color de fondo del Container

//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                       // crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         Container(
//                           alignment: Alignment.center,
//                           child: Image.asset(
//                             'assets/images/logo-jaus-dorado.png',
//                             width: 75,
//                             height: 75,
//                           ),
//                         ),
//                         Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               ClipOval(
//                                 child: Image.asset(
//                                   'assets/images/braid4.jpg',
//                                   width: 180,
//                                   height: 180,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 8,
//                               ),
//                               CustomTextFormField(
//                                 labelText: "Nombres",
//                                 colorLabelText: gradientColor,
//                                 // hintText: "Escriba su nombre",
//                                 colorHintText: primaryColor,
//                               ),
//                               SizedBox(
//                                 height: 13,
//                               ),
//                               CustomTextFormField(
//                                 labelText: "Apellidos",
//                                 colorLabelText: gradientColor,
//                                 // hintText: "Escriba su apellido",
//                                 colorHintText: primaryColor,
//                               ),
//                               SizedBox(
//                                 height: 13,
//                               ),
//                               CustomTextFormField(
//                                 labelText: "Teléfono",
//                                 colorLabelText: gradientColor,
//                                 // hintText: "Escriba su teléfono",
//                                 colorHintText: primaryColor,
//                               ),
//                               SizedBox(
//                                 height: 13,
//                               ),
//                               CustomTextFormField(
//                                 labelText: "Correo electrónico",
//                                 colorLabelText: gradientColor,
//                                 // hintText: "Escriba su correo electrónico",
//                                 colorHintText: primaryColor,
//                               ),
//                               SizedBox(
//                                 height: 13,
//                               ),
//                               CustomTextFormField(
//                                 labelText: "Fecha de la Reservación",
//                                 colorLabelText: gradientColor,
//                                 // hintText: "Escriba su correo electrónico",
//                                 colorHintText: primaryColor,
//                               ),

//                               SizedBox(
//                                 height: 13,
//                               ),
//                               CustomTextFormField(
//                                 labelText: "Hora de Reservación",
//                                 colorLabelText: gradientColor,
//                                 // hintText: "Escriba su correo electrónico",
//                                 colorHintText: primaryColor,
//                               ),

//                               // SizedBox(
//                               //     width: 220,
//                               //     height: 50,
//                               //     child: TextButton(
//                               //       onPressed: () => context.go('/home'),
//                               //       child: Text("Registrarse"),
//                               //     )),
//                             ],
//                           ),
//                         ),
//                       ]),
//                 ))));
//   }
// }
