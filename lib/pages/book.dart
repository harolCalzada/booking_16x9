import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/repositories/reservation_repository.dart';
import 'package:salon_app/widgets/date_column.dart';
import 'package:salon_app/widgets/service_section.dart';
import 'package:salon_app/widgets/slots_section.dart';

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
                      SlotsSection(),
                      SizedBox(
                        height: 25,
                      ),
                      Text("Puedes agregar otros servicios",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(secondaryColor))),
                      SizedBox(
                        height: 25,
                      ),
                      ServicesSectionWidget(add: false)
                    ],
                  )),
              SizedBox(height: 40),
              TextButton(
                onPressed: () async {
                  await ReservationRepository().addReservation(
                    date: DateTime.now(),
                    idSlots: 'slot123',
                    services: ['service1', 'service2'],
                    totalAmount: 150.00,
                  );
                  print("Datos de reservación guardados correctamente");
                  context.go('/confirm_reservation');
                },
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
