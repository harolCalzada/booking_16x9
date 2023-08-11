import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/widgets/button2.dart';

class ServicesDetail extends StatefulWidget {
  // const ServicesDetail({key, required ServiceEntity service});

  @override
  State<ServicesDetail> createState() => _ServicesDetailState();
}

class _ServicesDetailState extends State<ServicesDetail> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: ReturnButton(
            icon: Icons.arrow_back,
            iconColor: Colors.black,
            onPressed: () {
              context.go('/SideMenu');
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/logo-jaus-dorado.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Text(
                          "Servicios",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ]))));
  }
}
