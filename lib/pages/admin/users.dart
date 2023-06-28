import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

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
              }),
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
                  tileMode: TileMode.mirror),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/logo-jaus-dorado.png',
                        width: 75,
                        height: 75,
                      ),
                    ),
                    CustomTextFormField(
                      labelText: "Nombre",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su nombre",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomTextFormField(
                      labelText: "Apellido",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su apellido",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomTextFormField(
                      labelText: "Teléfono",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su teléfono",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomTextFormField(
                      labelText: "Correo electrónico",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su correo electrónico",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomTextFormField(
                      labelText: "Distrito",
                      colorLabelText: gradientColor,
                      hintText: "Escriba su distrito",
                      colorHintText: primaryColor,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
