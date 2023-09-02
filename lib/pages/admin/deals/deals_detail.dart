import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/models/deals_entity.dart';
import 'package:salon_app/repositories/deals_repository.dart';
import 'package:salon_app/widgets/button2.dart';

class DealsDetail extends StatefulWidget {
  final String id;

  DealsDetail({Key? key, required this.id}) : super(key: key);

  @override
  _DealsDetailState createState() => _DealsDetailState();
}

class _DealsDetailState extends State<DealsDetail> {
  bool? isActive = false;

  Future<void> saveDeal(
    String imageUrl,
    String textButton,
    String title,
    String urlButton,
    bool active,
    String id,
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
    return StreamBuilder<DealsEntity>(
      stream: DealsRepository().getDeal(widget.id),
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
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                context.go('/ListDeals');
              },
            ),
          ),
          backgroundColor: Colors.white,
          body: DealsDetailBody(dealsEntity: snapshot.data!),
        );
      },
    );
  }
}

class DealsDetailBody extends StatefulWidget {
  final DealsEntity dealsEntity;

  const DealsDetailBody({Key? key, required this.dealsEntity})
      : super(key: key);

  @override
  _DealsDetailBodyState createState() => _DealsDetailBodyState();
}

class _DealsDetailBodyState extends State<DealsDetailBody> {
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController textButtonController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController urlButtonController = TextEditingController();
  bool isActive = false;

  void saveDeal() {
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
                "Promociones",
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
                    controller: imageUrlController,
                    onChanged: (value) {},
                    decoration: InputDecoration(labelText: 'Url de la Imagen'),
                  ),
                  TextField(
                    controller: textButtonController,
                    onChanged: (value) {},
                    decoration: InputDecoration(labelText: 'Texto del Botón'),
                  ),
                  TextField(
                    controller: titleController,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Titulo de la Promoción',
                    ),
                  ),
                  TextField(
                    controller: urlButtonController,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Url del Botón',
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
                          if (imageUrlController.text.isNotEmpty &&
                              textButtonController.text.isNotEmpty &&
                              titleController.text.isNotEmpty &&
                              urlButtonController.text.isNotEmpty) {
                            saveDeal();
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
