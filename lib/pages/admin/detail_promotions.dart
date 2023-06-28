import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

class Details extends StatefulWidget {
  const Details({key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isChecked = false;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white, // Color de inicio del gradiente
                  Colors.white, // Color de fin del gradiente
                ],
                begin: Alignment.topRight, // Punto de inicio del gradiente
                end: Alignment.bottomRight, // Punto de fin del gradiente
                // Opcional: puedes ajustar los stops y tileMode según tus necesidades
                stops: [0.0, 1.0],
                tileMode: TileMode.mirror,
              ),
            ), // Color de fondo del Container
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  CustomTextFormField(
                    labelText: "Título",
                    colorLabelText: gradientColor,
                    // hintText: "Escriba su nombre",
                    colorHintText: primaryColor,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CustomTextFormField(
                    labelText: "Texto del Bottom",
                    colorLabelText: gradientColor,
                    // hintText: "Escriba su apellido",
                    colorHintText: primaryColor,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CheckboxListTile(
                    title: Text("Activo/Inactivo"),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
