// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:salon_app/constants/colors.dart';
// import 'package:salon_app/widgets/button.dart';
// import 'package:image_picker/image_picker.dart';



// class ImagePickerScreen extends StatefulWidget {
//   @override
//   _ImagePickerScreenState createState() => _ImagePickerScreenState();
// }

// class _ImagePickerScreenState extends State<ImagePickerScreen> {
//   File? _imageFile;

//   Future<void> _pickImage(ImageSource source) async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.pickImage(source: source);

//     setState(() {
//       _imageFile = pickedImage != null ? File(pickedImage.path) : null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.camera),
//               child: Text('Take Photo'),
//             ),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.gallery),
//               child: Text('Pick from Gallery'),
//             ),
//             SizedBox(height: 16.0),
//             _imageFile != null
//                 ? Image.file(_imageFile!)
//                 : Text('No image selected'),
//           ],
//         ),
//       ),
//     );
//   }
// }








//   _AddServiceState createState() => _AddServiceState();
// }

// class _AddServiceState extends State<AddService> {
//   bool _obscureText = true;
//   final _formKey = GlobalKey<FormState>();
//   final _passwordController = TextEditingController();
//   TextEditingController _imageUrlController = TextEditingController();

//   void _uploadImage() {
//     // Aquí puedes agregar la lógica para subir la imagen al sistema
//     // utilizando el enlace ingresado (_imageUrlController.text) o el archivo (_imageFile).
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               context.go('/ReservationService');
//             },
//           ),
//           elevation: 0,
//           backgroundColor: Colors.white,
//         ),
//         body: SingleChildScrollView(
//             child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.white, // Color de inicio del gradiente
//                       Colors.white, // Color de fin del gradiente
//                     ],
//                     begin: Alignment.topRight, // Punto de inicio del gradiente
//                     end: Alignment.bottomRight, // Punto de fin del gradiente
//                     // Opcional: puedes ajustar los stops y tileMode según tus necesidades
//                     stops: [0.0, 1.0],
//                     tileMode: TileMode.mirror,
//                   ),
//                 ), // Color de fondo del Container
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Form(
//                     key: _formKey,
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           alignment: Alignment.center,
//                           child: Image.asset(
//                             'assets/images/logo-jaus-dorado.png',
//                             width: 100,
//                             height: 100,
//                           ),
//                         ),
//                         CustomTextFormField(
//                           labelText: "Nombre del Servicio",
//                           colorLabelText: gradientColor,
//                         ),
//                         SizedBox(
//                           height: 13,
//                         ),
//                         CustomTextFormField(
//                           labelText: "Precio",
//                           colorLabelText: gradientColor,
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         SizedBox(
//                           width: 220,
//                           height: 50,
//                           child: TextButton(
//                             onPressed: () => context.go('/home'),
//                             child: Text("Guardar"),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ))));
//   }
// }
