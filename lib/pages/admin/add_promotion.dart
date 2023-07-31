import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/reservation.dart';
import 'package:salon_app/widgets/button.dart';

class AddPromotion extends StatefulWidget {
  @override
  _AddPromotionState createState() => _AddPromotionState();
}

class _AddPromotionState extends State<AddPromotion> {
  late File selectedImage;
  bool isChecked = false;

  Future<void> selectImage(BuildContext context) async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) return;
    setState(() {
      selectedImage = File(pickedImage.path);
    });
    // Puedes agregar aquí la lógica adicional para procesar la imagen seleccionada
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            context.go('/ServicesData');
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Form(
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
                  padding: const EdgeInsets.only(right: 25, left: 25),
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
                      contentText: "Promoción",
                      icon: Icons.local_offer,
                      route: '/AddService',
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 310,
                  height: 55,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Subir imagen',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(gradientColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => selectImage(context),
                          child:
                              Icon(Icons.camera_alt, color: Colors.grey[400]),
                        ),
                        SizedBox(width: 10),
                        Text(
                          selectedImage != null
                              ? 'Imagen seleccionada'
                              : 'Seleccionar imagen',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Nombre del Servicio",
                  colorLabelText: gradientColor,
                ),
                SizedBox(height: 16),
                CustomTextFormField(
                  labelText: "Fecha",
                  colorLabelText: gradientColor,
                ),
                SizedBox(height: 16),
                Container(
                  width: 310,
                  height: 55,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Número',
                      labelStyle: TextStyle(
                        color: Color(gradientColor),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CheckboxListTile(
                    title: Text("Activo/Inactivo"),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 220,
                  height: 50,
                  child: TextButton(
                    onPressed: () => context.go('/home'),
                    child: Text("Guardar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
