import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/models/services_entity.dart';
import 'package:salon_app/repositories/services_repository.dart';
import 'package:salon_app/widgets/button2.dart';

class ServicesDetail extends StatefulWidget {
  final String id;
  ServicesDetail({Key? key, required this.id}) : super(key: key);

  @override
  _ServicesDetailState createState() => _ServicesDetailState();
}

class _ServicesDetailState extends State<ServicesDetail> {
  bool? isActive = false;

  Future<void> saveService(
    String imageUrl,
    double price,
    String iconUrl,
    String serviceName,
    bool isActive,
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
    return StreamBuilder<ServiceEntity>(
        stream: ServiceRepository().getService(widget.id),
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
            body: ServiceDetailBody(),
          );
        });
  }
}

class ServiceDetailBody extends StatefulWidget {
  const ServiceDetailBody({Key? key}) : super(key: key);

  @override
  _ServiceDetailBodyState createState() => _ServiceDetailBodyState();
}

class _ServiceDetailBodyState extends State<ServiceDetailBody> {
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController iconUrlController = TextEditingController();
  TextEditingController serviceNameController = TextEditingController();

  bool? isActive = false;

  void saveService(
    String imageUrl,
    double price,
    String iconUrl,
    String serviceName,
    bool isActive,
  ) {
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
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        imageUrlController.text = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Imagen URL'),
                    controller: imageUrlController,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        priceController.text = value;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Precio'),
                    controller: priceController,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        iconUrlController.text = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Icono URL'),
                    controller: iconUrlController,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        serviceNameController.text = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Nombre del Servicio',
                    ),
                    controller: serviceNameController,
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
                        onPressed: () {
                          saveService(
                            imageUrlController.text,
                            double.tryParse(priceController.text) ?? 0.0,
                            iconUrlController.text,
                            serviceNameController.text,
                            isActive ?? false,
                          );
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
