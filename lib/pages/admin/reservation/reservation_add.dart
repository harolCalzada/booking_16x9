import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/pages/admin/reservation/reservation_list.dart';
import 'package:salon_app/repositories/reservation_repository.dart';

class AddReservation extends StatefulWidget {
  @override
  _AddReservationState createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
  String name = '';
  String district = '';
  DateTime date = DateTime.now();
  int telephoneNumber = 0;
  String email = '';
  String services = '';
  bool? isActive = false;
  String id = '';
  String idSlots = '';
  double totalAmount = 0.0;

  Future<void> saveService() async {
    await ReservationRepository().addReservation(
      idUser: id,
      idSlots: idSlots,
      totalAmount: totalAmount,
      name: name,
      district: district,
      date: Timestamp.fromDate(date),
      telephoneNumber: telephoneNumber,
      email: email,
      services: services.split(','),
      active: isActive ?? false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo-jaus-dorado.png',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 18),
              child: CustomNavigationBar(items: [
                NavigatorBarItem(
                  contentText: "Home",
                  icon: Icons.home,
                  route: '/menu_administrator',
                ),
                SizedBox(
                  width: 10,
                ),
                NavigatorBarItem(
                  contentText: "Reservas",
                  icon: Icons.calendar_today,
                  route: '/ReservationService',
                ),
              ]),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Reservas",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Nombres'),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        district = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Distrito'),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        telephoneNumber = int.tryParse(value) ?? 0;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Número de teléfono',
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                  ),
                  TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Hora',
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        services = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Servicios',
                    ),
                  ),
                  CheckboxListTile(
                    title: Text('Activo'),
                    value: isActive,
                    onChanged: (value) {
                      setState(() {
                        isActive = value;
                      });
                    },
                  ),
                  Center(
                    child: SizedBox(
                      width: 220,
                      height: 50,
                      child: TextButton(
                        onPressed: () async {
                          if (name.isNotEmpty &&
                              district.isNotEmpty &&
                              telephoneNumber != 0 && // Cambiado aquí
                              email.isNotEmpty &&
                              date != null &&
                              services.isNotEmpty) {
                            await saveService();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text('Servicio guardado en Firebase')),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Por favor complete todos los campos')),
                            );
                          }
                        },
                        child: Text("Guardar"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
