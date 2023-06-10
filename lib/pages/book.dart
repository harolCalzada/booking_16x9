import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
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
            primary: btnBg,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(width: 2, color: Color(secondarycolor))),
          ),
          onPressed: () {},
          child: Text(timeText,
              style: TextStyle(
                  color: timeBtnColor,
                  fontSize: 15.5,
                  fontWeight: FontWeight.w400)),
          // child: TextButton(
          // Text('time '),
          // shape: RoundedRectangleBorder(
          //   side: BorderSide(
          //   color: Colors.grey,
          //   width: 1,
          //   style: BorderStyle.solid
          // ),
          //   borderRadius: BorderRadius.circular(8),
          // ),
          // color: btnBg,
          // onPressed: () {},
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(gradientcolor),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Atrás",
                  style: TextStyle(
                    color: Color(secondarycolor),
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
            color: Color(secondarycolor),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        color: Color(gradientcolor),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: Color(gradientcolor),
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
                                color: Color(secondarycolor)),
                            onPressed: () {}),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Text("Marzo, 2023",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(secondarycolor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        IconButton(
                            icon: Icon(Icons.chevron_right,
                                color: Color(secondarycolor)),
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
                              dateTextColor: Color(secondarycolor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                              weekDay: "Mar.",
                              date: "17",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondarycolor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                              weekDay: "Miérc.",
                              date: "18",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondarycolor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                              weekDay: "Juev.",
                              date: "19",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondarycolor)),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                            weekDay: "Vier.",
                            date: "20",
                            dateBg: Color(secondarycolor),
                            dateTextColor: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                            weekDay: "Sáb.",
                            date: "21",
                            dateBg: Colors.transparent,
                            dateTextColor: Color(secondarycolor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DateColumn(
                            weekDay: "Dom.",
                            date: "22",
                            dateBg: Colors.transparent,
                            dateTextColor: Color(secondarycolor),
                          ),
                        ]),
                    SizedBox(height: 15),
                  ])),
              Container(
                  width: screen_size_width,
                  color: Color(gradientcolor),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 30),
                      Text("Horarios disponibles",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(secondarycolor))),
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
                                  Color(gradientcolor), Colors.black54),
                            ),
                            SizedBox(
                              width: 165,
                              child: buttonTime("10:00-11:00 AM",
                                  Color(secondarycolor), Colors.white),
                            ),
                            SizedBox(
                              width: 165,
                              child: buttonTime("11:00-12:00 PM",
                                  Color(gradientcolor), Colors.black54),
                            ),
                            SizedBox(
                              width: 165,
                              child: buttonTime("12:00-1:00 PM",
                                  Color(gradientcolor), Colors.black54),
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
                              color: Color(secondarycolor))),
                      SizedBox(
                        height: 10,
                      ),
                      Text("HAIR",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(secondarycolor))),
                      SizedBox(
                        height: 12,
                      ),
                      Services(),
                    ],
                  )),
              SizedBox(height: 40),
              TextButton(
                onPressed: () => Navigator.of(context).pushNamed('/home'),
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
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                isCheckedMakeup = !isCheckedMakeup;
              });
              Navigator.pushNamed(context, '/book');
            },
            child: Stack(
              children: [
                IconServices(
                  colorImg: isCheckedMakeup ? Colors.red : Color(gradientcolor),
                  columnImg: "images/icon-makeup.png",
                  columnTxt: "Makeup",
                  // columnBg: makeupColor,
                  textColor: Color(secondarycolor),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Checkbox(
                    value: isCheckedMakeup,
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
        ),
        Expanded(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/book'),
            child: Stack(
              children: [
                IconServices(
                  colorImg: Color(gradientcolor),
                  columnImg: "images/icon-cortehombre.png",
                  columnTxt: "Corte Hombre",
                  columnBg: Color(secondarycolor),
                  textColor: Color(secondarycolor),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Checkbox(
                    value: isCheckedCorteHombre,
                    onChanged: (value) {
                      setState(() {
                        isCheckedCorteHombre = value ?? false;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/book'),
            child: Stack(
              children: [
                IconServices(
                  colorImg: Color(gradientcolor),
                  columnImg: "images/icon-manicure.png",
                  columnTxt: "Manicure",
                  columnBg: Color(secondarycolor),
                  textColor: Color(secondarycolor),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Checkbox(
                    value: isCheckedManicure,
                    onChanged: (value) {
                      setState(() {
                        isCheckedManicure = value ?? false;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, '/book'),
            child: Stack(
              children: [
                IconServices(
                  colorImg: Color(gradientcolor),
                  columnImg: "images/icon-tinte.png",
                  columnTxt: "Tinte",
                  columnBg: Color(secondarycolor),
                  textColor: Color(secondarycolor),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Checkbox(
                    value: isCheckedTinte,
                    onChanged: (value) {
                      setState(() {
                        isCheckedTinte = value ?? false;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
