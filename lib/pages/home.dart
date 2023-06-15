import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';
import 'package:salon_app/widgets/icon_service.dart';
import 'package:salon_app/widgets/image_card.dart';
import 'package:salon_app/widgets/modal.dart';
import 'package:salon_app/widgets/specialist_column.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(primarygray), // Color de inicio del gradiente
                    Color(secondarygray), // Color de fin del gradiente
                  ],
                  begin: Alignment.center, // Punto de inicio del gradiente
                  end: Alignment.centerRight, // Punto de fin del gradiente
                  // Opcional: puedes ajustar los stops y tileMode según tus necesidades
                  stops: [0.0, 1.0],
                  tileMode: TileMode.mirror),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.short_text, color: Colors.black87),
            onPressed: () {},
          ),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(),
              margin: EdgeInsets.only(right: 15, top: 15),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  "images/profile.jpg",
                ),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(primarygray), // Color de inicio del gradiente
                  Color(secondarygray), // Color de fin del gradiente
                ],
                begin: Alignment.center, // Punto de inicio del gradiente
                end: Alignment.centerRight, // Punto de fin del gradiente
                // Opcional: puedes ajustar los stops y tileMode según tus necesidades
                stops: [0.0, 1.0],
                tileMode: TileMode.mirror),
          ),
          width: screen_size_width,
          height: screen_size_height,
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      height: screen_size_height * .2,
                      width: screen_size_width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ImageCard(cardImg: "images/banner-1.png"),
                          SizedBox(width: 10),
                          ImageCard(cardImg: "images/banner-2.png"),
                          SizedBox(width: 10),
                          ImageCard(cardImg: "images/banner-3.png"),
                        ],
                      )),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              servicesModal(context);
                            },
                            child: IconServices(
                              // colorImg: Color(secondarycolor),
                              columnImg: "images/icon-cortemujer.png",
                              columnTxt: "CORTE MUJER",
                              // columnBg: Color(backgroundimage),
                              textColor: Color(gradientColor),
                            )),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-cortehombre.png",
                            columnTxt: "CORTE HOMBRE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-tinte.png",
                            columnTxt: "TINTE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-highlights.png",
                            columnTxt: "HIGHLIGHTS ",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-makeup.png",
                            columnTxt: "MAKEUP",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-waves.png",
                            columnTxt: "WAVES",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-manicure.png",
                            columnTxt: "MANICURE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: IconServices(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-pedicure.png",
                            columnTxt: "PEDICURE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  NextReservationSectionWidget()
                ]),
          ),
        ));
  }
}

class NextReservationSectionWidget extends StatelessWidget {
  const NextReservationSectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Próxima cita",
            style: TextStyle(
              color: Color(gradientColor),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: double.infinity,
              height: 140,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(secondaryColor),
                border: Border.all(color: Color(gradientColor), width: 1),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fecha:",
                        style: TextStyle(
                          color: Color(gradientColor),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "16 de Julio del 2023",
                        style: TextStyle(
                          color: Color(gradientColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hora:",
                        style: TextStyle(
                            color: Color(gradientColor),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5:00 PM",
                        style: TextStyle(
                          color: Color(gradientColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dirección:",
                        style: TextStyle(
                          color: Color(gradientColor),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          "Av. José Larco 999, Miraflores",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(gradientColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    btnText: 'Ver QR',
                    height: 30,
                    colorBackground: Colors.black.value,
                    colorText: gradientColor,
                    onpressed: () =>
                        Navigator.of(context).pushNamed('/succeed_reservation'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
