import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/button.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(primarycolor),
              Color(secondarycolor),
              Color(gradientcolor),
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 260,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/logo-jaus-dorado.png",
                        ),
                        fit: BoxFit.contain)),
                height: 80,
              ),
              SizedBox(
                height: 90,
              ),
              Text("Ya tengo cuenta JAUS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(gradientcolor),
                      height: 1.5,
                      fontSize: 22,
                      letterSpacing: 1.3)),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 161,
                height: 38,
                child: MyButton(
                  btnText: "Ingresar",
                  colorBackground: (primarycolor),
                  colorText: gradientcolor,
                  width: 40,
                  height: 20,
                  onpressed: () => Navigator.of(context).pushNamed('/home'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 180,
                child: Text(
                  "Si es tu primera vez en JAUS.App Registrate",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.8,
                      letterSpacing: 1.3,
                      color: Color(gradientcolor)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 161,
                height: 38,
                child: MyButton(
                  btnText: "Registrate",
                  colorBackground: (primarycolor),
                  colorText: gradientcolor,
                  width: 40,
                  height: 20,
                  onpressed: () => Navigator.of(context).pushNamed('/home'),
                ),
              ),
            ]),
      ),
    );
  }
}
