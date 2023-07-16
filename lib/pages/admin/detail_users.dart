import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/pages/admin/reservation.dart';
import 'package:salon_app/widgets/button.dart';

import '../../widgets/button2.dart';

class DetailUsers extends StatefulWidget {
  @override
  _DetailUsersState createState() => _DetailUsersState();
}

class _DetailUsersState extends State<DetailUsers> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              context.go('/ReservationService');
            },
          ),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: CustomNavigationBar(items: [
                    NavigatorBarItem(
                      contentText: "Home",
                      icon: Icons.home,
                      route: '/menu_administrator',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    NavigatorBarItem(
                      contentText: "Usuario",
                      icon: Icons.person,
                      route: '/Users',
                    ),
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  labelText: "Nombres",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "Ingrid Calzada Villajuan",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Teléfono",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "957290391",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Correo",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "ingrid_1995_10@gmail.com",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "DNI",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "75723117",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: "Dirección",
                  colorLabelText: gradientColor,
                  enabled: false,
                  value: "Calle los Eucaliptos 145.Urb.",
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
