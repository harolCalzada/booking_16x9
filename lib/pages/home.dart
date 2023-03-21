import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/image_card.dart';
import 'package:salon_app/widgets/my_column.dart';
import 'package:salon_app/widgets/specialist_column.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context,) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(secondarycolor),
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
         color:Color(secondarycolor),
        ),
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "images/braid4.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "images/braid3.jpg"),
                    ],
                  )),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () { sendEmailRecoveryPasswordModal(context);
                       MyColumn(
                        columnImg: "images/braid.png",
                        columnTxt: "Braids",
                        columnBg:Color(gradientcolor),
                        textColor: Color(gradientcolor),
                         
                      );
                          }
                  ),),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                         textColor: Color(gradientcolor),
                      
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                         textColor: Color(gradientcolor),
                      
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
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
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                       textColor: Color(gradientcolor),
                      
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/shampoo.png",
                        columnTxt: "Shampoo",
                        columnBg: UIData.lighterColor,
                         textColor: Color(gradientcolor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                         textColor: Color(gradientcolor),
                     
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/more.png",
                        columnTxt: "More",
                        columnBg: UIData.lighterColor,
                         textColor: Color(gradientcolor),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Hair Specialists",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Color(primarycolor),
                                fontSize: 20, fontWeight: FontWeight.bold))),

                    ElevatedButton(
                      onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
  ),
  child: Text(
    "View All",
    style: TextStyle(color: Color(gradientcolor)),
  ),
),
                    // TextButton(
                    //   onPressed: () {},
                    //   // child: Text(
                    //   //   "View All",
                    //   //   style: TextStyle(color: Colors.black54),
                    //   // ),
                    // )
                  ]),
              SizedBox(height: 6),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SpecialistColumn(
                          specImg: "images/braid2.jpg", specName: "Anny Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/profile.jpg", specName: "Joy Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid3.jpg",
                          specName: "Patience Roy"),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );

  }
}

void sendEmailRecoveryPasswordModal(BuildContext ctx,) {
  
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
      height: 50,
      decoration: BoxDecoration(color: Color(gradientcolor),borderRadius: BorderRadius.circular(40)),
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


    ) ]
    )
    )
    );
  }
}