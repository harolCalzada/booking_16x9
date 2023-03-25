import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/date_column.dart';
import 'package:salon_app/widgets/specialist_column_book.dart';

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
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: btnBg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
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
      backgroundColor:Color(gradientcolor),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Color(secondarycolor)),
            onPressed: () => Navigator.pop(context)),
        title: Text("Separa tu cita",style: TextStyle(color:Color(secondarycolor),fontWeight: FontWeight.bold),
      ),),
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
                        IconButton(
                            icon: Icon(Icons.chevron_left, color: Color(secondarycolor)),
                            onPressed: () {}),
                        Expanded(
                          child: Text("Marzo, 2023",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(secondarycolor),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        IconButton(
                            icon:
                                Icon(Icons.chevron_right, color: Color(secondarycolor)),
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
                          SizedBox(height: 5,),
                          DateColumn(
                              weekDay: "Mar.",
                              date: "17",
                              dateBg: Colors.transparent,
                              dateTextColor:Color(secondarycolor)),
                          SizedBox(height: 5,),
                          
                         DateColumn(
                              weekDay: "Miérc.",
                              date: "18",
                              dateBg: Colors.transparent,
                              dateTextColor:Color(secondarycolor)),
                               SizedBox(height: 5,),
                          DateColumn(
                              weekDay: "Juev.",
                              date: "19",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondarycolor)),
                               SizedBox(height: 5,),
                          
                          DateColumn(
                              weekDay: "Vier.",
                              date: "20",
                              dateBg:Color(secondarycolor),
                              dateTextColor:  Colors.white,),
                                SizedBox(height: 5,),
                         
                          DateColumn(
                              weekDay: "Sáb.",
                              date: "21",
                              dateBg: Colors.transparent,
                              dateTextColor: Color(secondarycolor),),
                                   SizedBox(height: 5,),
                          
                          DateColumn(
                              weekDay: "Dom.",
                              date: "22",
                               dateBg: Colors.transparent,
                              dateTextColor: Color(secondarycolor),),
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
                      SizedBox(height: 18),
                      Text("Horarios disponibles", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(secondarycolor))),
                      SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonTime("9:30 - 10:30 AM", Color(gradientcolor),
                                Colors.black54),
                            buttonTime("10:30 - 11:45 AM",Color(secondarycolor),
                                Colors.white),
                            buttonTime("12:00 - 1:30 PM", Color(gradientcolor),
                                Colors.black54),
                            buttonTime(
                                "2:00 - 4:30 PM",Color(gradientcolor), Colors.black54),
                            buttonTime(
                                "5:30 - 6:30 PM",Color(gradientcolor), Colors.black54),
                            buttonTime(
                                "6:30 - 7:30 PM", Color(gradientcolor), Colors.black54),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Text("Choose Hair Specialists",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600,color: Color(secondarycolor)),),
                      SizedBox(height: 10),
                      Container(
                          height: 140,
                          width: screen_size_width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              SpecialistColumnBook(
                                  specImg: "images/braid2.jpg",
                                  specName: "Anny Roy",
                                  specNameStyle: TextStyle(color:Color(secondarycolor)),
                         
                                  ),
                              SizedBox(width: 25),
                              SpecialistColumnBook(
                                  specImg: "images/profile.jpg",
                                  specName: "Joy Roy",
                                  specNameStyle: TextStyle(color:Color(secondarycolor))),
                              SizedBox(width: 25),
                              SpecialistColumnBook(
                                  specImg: "images/braid3.jpg",
                                  specName: "Patience Roy",
                                  specNameStyle: TextStyle(color:Color(secondarycolor))),
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 10),
             TextButton(onPressed: () => Navigator.of(context).pushNamed('/home'),child: Text("Reservar"),),
              
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
