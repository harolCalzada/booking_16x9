import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _emailController = TextEditingController();
  final _distritoController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
     backgroundColor: Color(secondarycolor),
      ),
      body:Container(
  decoration: BoxDecoration(
    color: Color(secondarycolor), // Color de fondo del Container
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
      child: Image.asset('assets/images/logo-jaus-dorado.png',width: 120,height: 120,),
    ),
              
              Container(width: 310,height: 50,
                child: TextFormField(
                  controller: _nombreController,
                  decoration: InputDecoration(labelText: 'Nombre',labelStyle: TextStyle(
                    color:Color(gradientcolor),fontWeight: FontWeight.bold),
                    
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(gradientcolor)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(gradientcolor)),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),               
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingrese su nombre';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 13,),
              Container(width: 310,height: 50,
                child: TextFormField(
                  controller: _apellidoController,
                  decoration: InputDecoration(labelText: 'Apellido',labelStyle: TextStyle(color:Color(gradientcolor),fontWeight: FontWeight.bold),
                  
                     border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(gradientcolor)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Color(gradientcolor)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                 
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingrese su apellido';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 13,),
              Container(width: 310,height: 50,
                child: TextFormField(
                  controller: _telefonoController,
                  decoration: InputDecoration(labelText: 'Teléfono',labelStyle: TextStyle(color:Color(gradientcolor),fontWeight: FontWeight.bold),
                  
                   border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(gradientcolor)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(gradientcolor)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  
                  keyboardType: TextInputType.phone,    
                         validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingrese su teléfono';
                    }
                    return null;
                  },
                ),
              ),
                   SizedBox(height: 13,),
              Container(width: 310,height: 50,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Correo electrónico',labelStyle: TextStyle(color:Color(gradientcolor),fontWeight: FontWeight.bold),
                   border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(gradientcolor)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(gradientcolor)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                               
                  keyboardType: TextInputType.emailAddress,
                                   
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingrese su correo electrónico';
                    }
                    if (!value.contains('@')) {
                      return 'Por favor ingrese un correo electrónico válido';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 13,),
              Container(width: 310,height: 50,
                child: TextFormField(
                  controller: _distritoController,
                  decoration: InputDecoration(labelText: 'Distrito',labelStyle: TextStyle(color:Color(gradientcolor),fontWeight: FontWeight.bold),
                   border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(gradientcolor)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(gradientcolor)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                 
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingrese su distrito';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 13,),
              Container(width: 310,height: 50,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Contraseña',labelStyle: TextStyle(color:Color(gradientcolor),fontWeight: FontWeight.bold),
                   border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(gradientcolor)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(gradientcolor)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                  
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingrese su contraseña';
                    }
                    if (value.length < 6) {
                      return 'La contraseña debe tener al menos 6 caracteres';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 50.0),
                 
              SizedBox(width:220,height:50,child: TextButton(onPressed: () => Navigator.of(context).pushNamed('/home'),child: Text("Registrarse"),)),
              ],
              ),
              ),
              ),
              ));
              }
              }



             