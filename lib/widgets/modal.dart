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
    elevation: 10,
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
      width: 180,
      height: 500,
      decoration: BoxDecoration(
          color: Color(gradientcolor), borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/profile.png',
              width: 40,
              height: 40,
            ),
            Text(
              'Laceados',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Se hace todo tipo de laceados como el: Brasilero, Marroqui ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
