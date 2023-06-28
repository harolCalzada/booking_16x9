import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/button.dart';
import 'package:salon_app/widgets/button2.dart';

class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  List<DataRow> _rows = [
    DataRow(cells: [
      DataCell(Text('Promoción 1')),
      DataCell(Text('Corte de pelo')),
    ]),
    DataRow(cells: [
      DataCell(Text('Promoción 2')),
      DataCell(Text('Manicure')),
    ]),
    // Agrega más filas según sea necesario
  ];

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
            context.go('/Details');
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
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo-jaus-dorado.png',
                  width: 75,
                  height: 75,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/braid4.jpg',
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 18),
                    CustomTextFormField(
                      labelText: "Texto de Promociones",
                      colorLabelText: gradientColor,
                      colorHintText: primaryColor,
                    ),
                    SizedBox(height: 25),
                    CustomTextFormField(
                      labelText: "Fecha de Promo",
                      colorLabelText: gradientColor,
                      colorHintText: primaryColor,
                    ),
                    SizedBox(height: 13),
                    DataTable(
                      columns: [
                        DataColumn(label: Text('Promoción')),
                        DataColumn(label: Text('Descripción')),
                      ],
                      rows: _rows,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
