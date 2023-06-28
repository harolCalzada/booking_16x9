import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';

class AddPromotion extends StatelessWidget {
  const AddPromotion({key});

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
              context.go('/ReservationService');
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
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
                  tileMode: TileMode.mirror),
            ), // Color de fondo del Container

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/logo-jaus-dorado.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    CustomTextFormField(
                      labelText: "Nombre del Servicio",
                      colorLabelText: gradientColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomTextFormField(
                      labelText: "Fecha",
                      colorLabelText: gradientColor,
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    SizedBox(
                        width: 220,
                        height: 50,
                        child: TextButton(
                          onPressed: () => context.go('/home'),
                          child: Text("Guardar"),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
