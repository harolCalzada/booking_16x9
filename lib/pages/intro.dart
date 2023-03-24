import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

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
          color:Color(secondarycolor),
  
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
                   height:250,
                 ),
                 Text("Ya tengo cuenta JAUS ",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         color: Color(gradientcolor),
                         height: 1.5,
                         fontSize: 22,
                         letterSpacing: 1.3)),
                 SizedBox(height: 14,),

                 TextButton(onPressed: () => Navigator.of(context).pushNamed('/home'),child: Text("Ingresar a JAUS"),),
                 SizedBox(
                   height: 10,
                 ),
                 Text(
                   "Si es tu primera vez en",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 19,
                       height: 1.8,
                       color: Color(gradientcolor)
                       
      
                       ),
                 ),
               
               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(
                     child: Text(
                           "JAUS.",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 23,
                             fontWeight: FontWeight.bold,
                               color: Color(gradientcolor)
                               
                         
                               ),
                         ),
                   ),
                  Text(
                     "App",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 16,
                         color: Color(gradientcolor)
                         
      
                         ),
                   ),
                
                
                 ],
               ),
               

          SizedBox(height: 15,),
                
               Text(
                     " Registrate",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 20,
                       decoration: TextDecoration.underline,
                         height: 1.8,
                         letterSpacing: 1.3,
                         color: Color(gradientcolor)
                         
      
                         ),
                   ),
      ],
    )));
  }
}
