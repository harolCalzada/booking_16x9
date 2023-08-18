import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/repositories/deals_repository.dart';
import 'package:salon_app/widgets/button2.dart';

class AddPromotion extends StatefulWidget {
  @override
  _AddPromotionState createState() => _AddPromotionState();
}

class _AddPromotionState extends State<AddPromotion> {
  String imageUrl = '';
  String textButton = '';
  String promotionName = '';
  String buttonUrl = '';
  bool? isActive = false;

  Future<void> saveService() async {
    await DealsRepository().addDeals(
      imageUrl: imageUrl,
      textButton: textButton,
      title: promotionName,
      urlButton: buttonUrl,
      active: isActive ?? false,
    );
  }

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
                  children: [
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          promotionName = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Nombre de la Promoción',
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          buttonUrl = value;
                        });
                      },
                      decoration: InputDecoration(labelText: 'Botón URL'),
                    ),
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
                          textButton = value;
                        });
                      },
                      decoration:
                          InputDecoration(labelText: 'Texto del Botónh '),
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
                            if (imageUrl.isNotEmpty &&
                                buttonUrl.isNotEmpty &&
                                textButton.isNotEmpty &&
                                promotionName.isNotEmpty) {
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
      ),
    );
  }
}
