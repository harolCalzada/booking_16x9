import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRScanScreen extends StatefulWidget {
//   @override
//   _QRScanScreenState createState() => _QRScanScreenState();
// }

// class _QRScanScreenState extends State<QRScanScreen> {
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

//   QRViewController controller;
//   bool scanComplete = false;

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   void onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       if (!scanComplete) {
//         setState(() {
//           scanComplete = true;
//           // Aquí puedes manejar la información obtenida del escaneo del código QR
//           print(scanData.code);
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Escaneo de QR'),
//       ),
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           QRView(
//             key: qrKey,
//             onQRViewCreated: onQRViewCreated,
//           ),
//           if (scanComplete)
//             Container(
//               color: Colors.black54,
//               child: Center(
//                 child: Text(
//                   'Escaneo completo',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: QRScanScreen(),
//   ));
// }
