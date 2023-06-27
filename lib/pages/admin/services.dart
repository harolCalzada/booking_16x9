// import 'package:flutter/material.dart';

// import 'package:salon_app/constants/colors.dart';

// import '../../widgets/icon_service.dart';
// import '../../widgets/modal.dart';

// class Services extends StatefulWidget {
//   @override
//   _ServicesState createState() => _ServicesState();
// }

// class _ServicesState extends State<Services> {
//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     final screen_size_width = MediaQuery.of(context).size.width;
//     final screen_size_height = MediaQuery.of(context).size.height;
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Color(primaryGray),
//           leading: Container(
//             // width: MediaQuery.of(context).size.width,
//             // height: MediaQuery.of(context).size.height,
//             child: PopupMenuButton(
//               color: Color(gradientColor),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               icon: Icon(
//                 Icons.short_text_rounded,
//                 color: Color(gradientColor),
//                 size: 29,
//               ),
//               offset: Offset(0, 50),
//               itemBuilder: (BuildContext context) {
//                 return [
//                   PopupMenuItem(
//                     child: Container(
//                       height: 40, // Ajusta este valor según tus necesidades
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.person,
//                                 color: Color(primaryGray),
//                               ),
//                               SizedBox(width: 8),
//                               Text(
//                                 'Perfil',
//                                 style: TextStyle(color: Color(primaryGray)),
//                               ),
//                             ],
//                           ),
//                           Divider(
//                             // Agrega la línea divisoria
//                             color: Colors.grey,
//                             thickness: 1,
//                           ),
//                         ],
//                       ),
//                     ),
//                     value: 'opcion1',
//                   ),
//                   PopupMenuItem(
//                     child: Container(
//                       height: 40, // Ajusta este valor según tus necesidades
//                       child: Column(
//                         children: [
//                           Row(children: [
//                             Icon(
//                               Icons.calendar_today,
//                               color: Color(primaryGray),
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Reservas',
//                               style: TextStyle(color: Color(primaryGray)),
//                             ),
//                           ]),
//                           Divider(
//                             // Agrega la línea divisoria
//                             color: Colors.grey,
//                             thickness: 1,
//                           ),
//                         ],
//                       ),
//                     ),
//                     value: 'opcion2',
//                   ),
//                   PopupMenuItem(
//                     child: Container(
//                       height: 40, // Ajusta este valor según tus necesidades
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.exit_to_app,
//                                 color: Color(primaryGray),
//                               ),
//                               SizedBox(width: 8),
//                               Text(
//                                 'Cerrar sesión',
//                                 style: TextStyle(color: Color(primaryGray)),
//                               ),
//                             ],
//                           ),
//                           // Divider(
//                           //   // Agrega la línea divisoria
//                           //   color: Colors.grey,
//                           //   thickness: 1,
//                           // ),
//                         ],
//                       ),
//                     ),
//                     value: 'opcion3',
//                   ),
//                 ];
//               },
//               onSelected: (value) {
//                 // Lógica para manejar la opción seleccionada
//                 if (value == 'opcion1') {
//                   // Acción para la opción 1
//                 } else if (value == 'opcion2') {
//                   // Acción para la opción 2
//                 }
//               },
//             ),
//           ),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//                   Color(primaryGray), // Color de inicio del gradiente
//                   Color(secondaryGray), // Color de fin del gradiente
//                 ],
//                 begin: Alignment.topRight, // Punto de inicio del gradiente
//                 end: Alignment.bottomRight, // Punto de fin del gradiente
//                 // Opcional: puedes ajustar los stops y tileMode según tus necesidades
//                 stops: [0.0, 1.0],
//                 tileMode: TileMode.mirror),
//           ),
//           width: screen_size_width,
//           height: screen_size_height,
//           padding: EdgeInsets.only(top: 16, left: 16, right: 16),
//           child: SingleChildScrollView(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 25,
//                   ),
//                   SizedBox(height: 50),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.max,
//                     children: <Widget>[
//                       Expanded(
//                         child: InkWell(
//                             onTap: () {
//                               servicesModal(context);
//                             },
//                             child: IconServices(
//                               // colorImg: Color(secondarycolor),
//                               columnImg: "images/icon-cortemujer.png",
//                               columnTxt: "CORTE MUJER",
//                               // columnBg: Color(backgroundimage),
//                               textColor: Color(gradientColor),
//                             )),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-cortehombre.png",
//                             columnTxt: "CORTE HOMBRE",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-tinte.png",
//                             columnTxt: "TINTE",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-highlights.png",
//                             columnTxt: "HIGHLIGHTS ",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.max,
//                     children: <Widget>[
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-makeup.png",
//                             columnTxt: "MAKEUP",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-waves.png",
//                             columnTxt: "WAVES",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-manicure.png",
//                             columnTxt: "MANICURE",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             servicesModal(context);
//                           },
//                           child: IconServices(
//                             // colorImg: Color(secondarycolor),
//                             columnImg: "images/icon-pedicure.png",
//                             columnTxt: "PEDICURE",
//                             // columnBg: Color(gradientcolor),
//                             textColor: Color(gradientColor),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 15),
//                 ]),
//           ),
//         ));
//   }
// }
