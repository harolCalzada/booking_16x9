import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/repositories/services_repository.dart';
import 'package:salon_app/widgets/button2.dart';

class ServicesDetail extends StatefulWidget {
  @override
  _ServicesDetailState createState() => _ServicesDetailState();
}

class _ServicesDetailState extends State<ServicesDetail> {
  String imageUrl = '';
  double price = 0.0;
  String iconUrl = '';
  String serviceName = '';
  bool? isActive = false;

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
              ],
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
                  "Servicios",
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
                child: Column(children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        imageUrl = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Imagen URL'),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        price = double.tryParse(value) ?? 0.0;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Precio'),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        iconUrl = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Icono URL'),
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        serviceName = value;
                      });
                    },
                    decoration:
                        InputDecoration(labelText: 'Nombre del Servicio'),
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
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     if (imageUrl.isNotEmpty &&
                  //         price > 0.0 &&
                  //         iconUrl.isNotEmpty &&
                  //         serviceName.isNotEmpty) {
                  //       await ServiceRepository().addService(
                  //         imageUrl: imageUrl,
                  //         price: price,
                  //         iconUrl: iconUrl,
                  //         name: serviceName,
                  //         active: isActive ?? false,
                  //       );

                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //             content: Text('Servicio guardado en Firebase')),
                  //       );
                  //     } else {
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //             content:
                  //                 Text('Por favor complete todos los campos')),
                  //       );
                  //     }
                  //   },
                  //   child: Text('Guardar'),
                  // ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
