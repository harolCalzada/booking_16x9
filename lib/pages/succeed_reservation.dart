import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class SucceedReservation extends StatelessWidget {
  const SucceedReservation({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(gradientColor),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Atrás",
                  style: TextStyle(
                    color: Color(secondaryColor),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "GRACIAS POR SU COMPRA",
                style: TextStyle(
                    color: Color(secondaryColor),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Resumen del Servicio",
              style: TextStyle(
                  color: Color(secondaryColor),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Table(
              border: TableBorder.all(color: Colors.transparent),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Corte mujer',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'S/50.00',
                          style: TextStyle(color: Color(secondaryColor)),
                        ),
                      ),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Waves',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/45.00',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Highlights',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/70.00',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Makeup',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/80.00',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                  ],
                ),

                // TableRow(children: [
                //   TableCell(
                //     child: Container(
                //       width: double.infinity,
                //       padding: EdgeInsets.all(10.0),
                //     ),
                //   ),
                //   TableCell(
                //     child: Container(
                //       width: double.infinity,
                //       padding: EdgeInsets.all(10.0),
                //       child: Column(
                //         children: [
                //           Divider(
                //             color: Colors.black, // Color de la línea
                //             thickness: 1.0, // Grosor de la línea
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ]),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Total',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(secondaryColor),
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/245.00',
                            style: TextStyle(color: Color(secondaryColor))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "images/codigo-qr1.png",
                height: 160,
                width: 160,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Paga y confirma el código QR",
                style: TextStyle(
                  color: Color(secondaryColor),
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).pushNamed('/home'),
                child: Text("Ir a Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
