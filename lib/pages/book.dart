import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/date_column.dart';
import 'package:salon_app/widgets/icon_service.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    //buttonTime
    Widget buttonTime(timeText, btnBg, timeBtnColor) {
      return Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: btnBg,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(width: 2, color: Color(secondaryColor))),
          ),
          onPressed: () {},
          child: Text(
            timeText,
            style: TextStyle(
                color: timeBtnColor,
                fontSize: 15.5,
                fontWeight: FontWeight.w400),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(gradientColor),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            context.go('/home');
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Atrás",
                  style: TextStyle(
                    color: Color(secondaryColor),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Text(
          "Separa tu cita",
          style: TextStyle(
            fontSize: 19,
            color: Color(secondaryColor),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        color: Color(gradientColor),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: Color(gradientColor),
                  width: screen_size_width,
                  child: Column(children: <Widget>[
                    //SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        IconButton(
                            icon: Icon(Icons.chevron_left,
                                color: Color(secondaryColor)),
                            onPressed: () {}),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Text("Marzo, 2023",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(secondaryColor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        IconButton(
                            icon: Icon(Icons.chevron_right,
                                color: Color(secondaryColor)),
                            onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DateColumn(
                              weekDay: "Lun.",
                              date: "16",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondaryColor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                              weekDay: "Mar.",
                              date: "17",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondaryColor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                              weekDay: "Miérc.",
                              date: "18",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondaryColor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                              weekDay: "Juev.",
                              date: "19",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondaryColor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                            weekDay: "Vier.",
                            date: "20",
                            dateBg: Color(secondaryColor),
                            dateTextColor: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                            weekDay: "Sáb.",
                            date: "21",
                            dateBg: Colors.transparent,
                            dateTextColor: Color(secondaryColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                            weekDay: "Dom.",
                            date: "22",
                            dateBg: Colors.transparent,
                            dateTextColor: Color(secondaryColor),
                          ),
                        ]),
                    SizedBox(height: 15),
                  ])),
              Container(
                  width: screen_size_width,
                  color: Color(gradientColor),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 30),
                      Text("Horarios disponibles",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(secondaryColor))),
                      SizedBox(height: 35),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 22,
                          spacing: 2,
                          children: <Widget>[
                            SizedBox(
                              width: 165,
                              child: buttonTime("9:00- 10:00 AM",
                                  Color(gradientColor), Colors.black54),
                            ),
                            SizedBox(
                              width: 165,
                              child: buttonTime("10:00-11:00 AM",
                                  Color(secondaryColor), Colors.white),
                            ),
                            SizedBox(
                              width: 165,
                              child: buttonTime("11:00-12:00 PM",
                                  Color(gradientColor), Colors.black54),
                            ),
                            SizedBox(
                              width: 165,
                              child: buttonTime("12:00-1:00 PM",
                                  Color(gradientColor), Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Puedes agregar otros servicios",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(secondaryColor))),
                      SizedBox(
                        height: 10,
                      ),
                      // Text("HAIR",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.bold,
                      //         color: Color(secondaryColor))),
                      // SizedBox(
                      //   height: 12,
                      // ),
                      Services(),
                    ],
                  )),
              SizedBox(height: 40),
              TextButton(
                onPressed: () => context.go(
                  '/confirm_reservation',
                ),
                child: Text("Reservar"),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class Services extends StatefulWidget {
  const Services({key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool isCheckedMakeup = false;
  bool isCheckedCorteHombre = false;
  bool isCheckedManicure = false;
  bool isCheckedTinte = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ServiceIconAddWidget(),
        ServiceIconAddWidget(),
        ServiceIconAddWidget(),
        ServiceIconAddWidget()
      ],
    );
  }
}

class ServiceIconAddWidget extends StatefulWidget {
  const ServiceIconAddWidget();

  @override
  State<ServiceIconAddWidget> createState() => _ServiceIconAddWidgetState();
}

class _ServiceIconAddWidgetState extends State<ServiceIconAddWidget> {
  bool isCheckedMakeup = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            isCheckedMakeup = !isCheckedMakeup;
          });
        },
        child: Stack(
          children: [
            IconServices(
              colorImg: isCheckedMakeup ? Colors.red : Color(gradientColor),
              columnImg: "images/icon-makeup.png",
              columnTxt: "Makeup",
              // columnBg: makeupColor,
              textColor: Color(secondaryColor),
            ),
            Positioned(
              bottom: 15,
              right: 18,
              child: Checkbox(
                value: isCheckedMakeup,
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onChanged: (value) {
                  setState(() {
                    isCheckedMakeup = value ?? false;
                  });
                },
                activeColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
