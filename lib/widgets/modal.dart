import 'package:flutter/material.dart';
import 'package:salon_app/widgets/button.dart';

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
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          color: Color(secondarycolor), borderRadius: BorderRadius.circular(40)),
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
  SizedBox(height: 5,),
            Text(
              'Corte de Mujer',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(gradientcolor),
              ),
            ),
           SizedBox(height: 15,),
            Text(
              'S/165 ',
              textAlign: TextAlign.center,
              
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color (gradientcolor),
              ),
            ),
          SizedBox(height: 15,),
          SizedBox(
                width: 161,
                height: 38,
                child: MyButton(
                  btnText: "Reservar",
                  colorBackground: (primarycolor),
                  colorText: gradientcolor,
                  width: 40,
                  height: 20,
                  onpressed: () => Navigator.of(context).pushNamed('/home'),
                ),
              ), 
              SizedBox(height: 5,),
              SizedBox(
                width: 161,
                height: 38,
                child: MyButton(
                  btnText: "Cancelar",
                  colorBackground: (secondarycolor),
                  colorText: gradientcolor,
                  // width: 40,
                  // height: 20,
                  onpressed: () => Navigator.of(context).pushNamed('/home'),
                ),
              ),
              
              ],
        ),
      ),
    );
  }
}
