import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/models/reservation_entity.dart';
import 'package:salon_app/repositories/reservation_repository.dart';
import 'package:salon_app/widgets/button2.dart';

class ReservationDetail extends StatefulWidget {
  final String id;

  ReservationDetail({Key? key, required this.id}) : super(key: key);

  @override
  _ReservationDetailState createState() => _ReservationDetailState();
}

class _ReservationDetailState extends State<ReservationDetail> {
  bool? isActive = false;

  Future<void> saveService(
    String name,
    String district,
    // Timestamp date,
    int telephoneNumber,
    String email,
    List<String> services,
    bool active,
    // double total_amount,
  ) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Servicio guardado en Firebase'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    print("Service ID: ${widget.id}");
    return StreamBuilder<ReservationEntity>(
      stream: ReservationRepository().getReservation(widget.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: ReturnButton(
              icon: Icons.arrow_back,
              iconColor: Colors.black,
              onPressed: () {
                context.go('/SideMenu');
              },
            ),
          ),
          backgroundColor: Colors.white,
          body: ReservationDetailBody(reservationEntity: snapshot.data!),
        );
      },
    );
  }
}

class ReservationDetailBody extends StatefulWidget {
  final ReservationEntity reservationEntity;

  const ReservationDetailBody({Key? key, required this.reservationEntity})
      : super(key: key);

  @override
  _ReservationDetailBodyState createState() => _ReservationDetailBodyState();
}

class _ReservationDetailBodyState extends State<ReservationDetailBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController telephoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController servicesController = TextEditingController();
  bool isActive = false;

  void saveReservation() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Servicio guardado en Firebase'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "Reservas",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    controller: nameController,
                    onChanged: (value) {},
                    decoration: InputDecoration(labelText: 'Nombres'),
                  ),
                  TextField(
                    controller: districtController,
                    onChanged: (value) {},
                    decoration: InputDecoration(labelText: 'Distrito'),
                  ),
                  TextField(
                    controller: telephoneNumberController,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Número de teléfono',
                    ),
                  ),
                  TextField(
                    controller: emailController,
                    onChanged: (value) {},
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
                    controller: servicesController,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Servicios',
                    ),
                  ),
                  CheckboxListTile(
                    title: Text('Activo'),
                    value: isActive,
                    onChanged: (value) {
                      setState(() {
                        isActive = value ?? false;
                      });
                    },
                  ),
                  Center(
                    child: SizedBox(
                      width: 220,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          if (nameController.text.isNotEmpty &&
                              districtController.text.isNotEmpty &&
                              telephoneNumberController.text.isNotEmpty &&
                              emailController.text.isNotEmpty &&
                              servicesController.text.isNotEmpty) {
                            saveReservation();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('Por favor complete todos los campos'),
                              ),
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
