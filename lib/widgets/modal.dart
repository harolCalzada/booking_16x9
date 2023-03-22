import 'package:flutter/material.dart';

import '../constants/colors.dart';

void sendEmailRecoveryPasswordModal(
  BuildContext ctx,
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
    backgroundColor: Color(gradientcolor),
    context: ctx,
    builder: (ctx) => ModalServices(),
  );
}

class ModalServices extends StatelessWidget {
  const ModalServices({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
          color: Color(secondarycolor), borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/braid4.jpg',
              width: 300,
              height: 100,
            ),
            Text(
              'Laceados',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(gradientcolor),
              ),
            ),
            Text(
              'Se hace todo tipo de laceados como el: Brasilero, Marroqui, Japones ',
              textAlign: TextAlign.center,
              
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color (gradientcolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
