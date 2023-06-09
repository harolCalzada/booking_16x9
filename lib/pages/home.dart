import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/image_card.dart';
import 'package:salon_app/widgets/modal.dart';
import 'package:salon_app/widgets/my_column.dart';
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
          backgroundColor: Color(secondarycolor),
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.short_text, color: Colors.black87),
              onPressed: () {}),
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
            color: Color(secondarycolor),
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
                            child: MyColumn(
                              // colorImg: Color(secondarycolor),
                              columnImg: "images/corte_mujer.jpg",
                              columnTxt: "CORTE MUJER",
                              // columnBg: Color(gradientcolor),
                              textColor: Color(gradientcolor),
                            )),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/corte_hombre.jpg",
                            columnTxt: "CORTE HOMBRE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/tinte.png",
                            columnTxt: "TINTE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/highlights.png",
                            columnTxt: "HIGHLIGHTS ",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
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
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-makeup.png",
                            columnTxt: "MAKEUP",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/icon-waves.png",
                            columnTxt: "WAVES",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/manicure.png",
                            columnTxt: "MANICURE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            servicesModal(context);
                          },
                          child: MyColumn(
                            // colorImg: Color(secondarycolor),
                            columnImg: "images/pedicure.png",
                            columnTxt: "PEDICURE",
                            // columnBg: Color(gradientcolor),
                            textColor: Color(gradientcolor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Reservas Cercanas",
                    style: TextStyle(
                      color: Color(gradientcolor),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(secondarycolor),
                        border:
                            Border.all(color: Color(gradientcolor), width: 1),
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
                                "•",
                                style: TextStyle(
                                  color: Color(gradientcolor),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "18-06-23 ",
                                style: TextStyle(
                                  color: Color(gradientcolor),
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
                                "•",
                                style: TextStyle(
                                  color: Color(gradientcolor),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5:00 PM",
                                style: TextStyle(
                                  color: Color(gradientcolor),
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
                                "•",
                                style: TextStyle(
                                  color: Color(gradientcolor),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Miraflores",
                                style: TextStyle(
                                  color: Color(gradientcolor),
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
                                "•",
                                style: TextStyle(
                                  color: Color(gradientcolor),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Corte de cabello",
                                style: TextStyle(
                                  color: Color(gradientcolor),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
          ),
        ));
  }
}
