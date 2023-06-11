import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class Reservation extends StatelessWidget {
  const Reservation({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(gradientcolor),
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
                    color: Color(secondarycolor),
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
              height: 30,
            ),
            Text(
              "Orden del servicio",
              style: TextStyle(
                  color: Color(secondarycolor),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Precio de Servicio',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'S/50.00',
                          style: TextStyle(color: Color(secondarycolor)),
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
                        child: Text('Descuento del Servicio',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/10.00',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Tax',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/15.00',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Total',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8.0),
                        child: Text('S/75.00',
                            style: TextStyle(color: Color(secondarycolor))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
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
                  color: Color(secondarycolor),
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).pushNamed('/login'),
                child: Text("Confirmar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
