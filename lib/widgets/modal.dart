import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/widgets/button.dart';

import '../constants/colors.dart';

void servicesModal(
  BuildContext ctx,
  Key key,
  String imageUrl,
  String nameServices,
  double price,
) {
  showModalBottomSheet(
    clipBehavior: Clip.antiAlias,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(50),
        topLeft: Radius.circular(50),
      ),
    ),
    elevation: 11,
    backgroundColor: Color(gradientColor),
    context: ctx,
    builder: (ctx) => ModalServices(
      imageUrl: imageUrl,
      nameServices: nameServices,
      price: price,
    ),
  );
}

class ModalServices extends StatelessWidget {
  const ModalServices({
    required this.imageUrl,
    required this.nameServices,
    required this.price,
  });

  final String imageUrl;
  final String nameServices;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(primaryGray), // Color de inicio del gradiente
                Color(secondaryGray), // Color de fin del gradiente
              ],
              begin: Alignment.topRight, // Punto de inicio del gradiente
              end: Alignment.bottomRight, // Punto de fin del gradiente
              // Opcional: puedes ajustar los stops y tileMode según tus necesidades
              stops: [0.0, 1.0],
              tileMode: TileMode.mirror),
          borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                imageUrl,
                width: 220,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              nameServices,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(gradientColor),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              price.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(gradientColor),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 161,
              height: 38,
              child: CustomButton(
                btnText: "Reservar",
                colorBackground: (primaryColor),
                colorText: gradientColor,
                width: 40,
                height: 20,
                onpressed: () => context.go('/book'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 161,
              height: 38,
              child: CustomButton(
                btnText: "Cancelar",
                colorBackground: (secondaryColor),
                colorText: gradientColor,
                width: 40,
                height: 20,
                onpressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void passwordModal(
//   BuildContext ctx,
// ) {
//   showModalBottomSheet(
//     clipBehavior: Clip.antiAlias,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//         topRight: Radius.circular(50),
//         topLeft: Radius.circular(50),
//       ),
//     ),
//     elevation: 11,
//     backgroundColor: Color(gradientColor),
//     context: ctx,
//     builder: (ctx) => ModalServices(),
//   );
// }

class PasswordForgotModal extends StatelessWidget {
  const PasswordForgotModal({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          color: Color(secondaryColor),
          borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/braid4.jpg',
                width: 220,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Corte de Mujer',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(gradientColor),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'S/165 ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(gradientColor),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 161,
              height: 38,
              child: CustomButton(
                btnText: "Reservar",
                colorBackground: (primaryColor),
                colorText: gradientColor,
                width: 40,
                height: 20,
                onpressed: () => context.go('/book'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 161,
              height: 38,
              child: CustomButton(
                btnText: "Cancelar",
                colorBackground: (secondaryColor),
                colorText: gradientColor,
                width: 40,
                height: 20,
                onpressed: () => context.go('/home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
