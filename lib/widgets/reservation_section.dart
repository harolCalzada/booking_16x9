import 'package:flutter/material.dart';
import 'package:salon_app/models/reservation_entity.dart';
import 'package:salon_app/repositories/reservation_repository.dart';

class ReservationSection extends StatefulWidget {
  const ReservationSection({Key? key}) : super(key: key);

  @override
  State<ReservationSection> createState() => _ReservationSectionState();
}

class _ReservationSectionState extends State<ReservationSection> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ReservationEntity>>(
      stream: ReservationRepository().getAllReservations(),
      builder: (context, snapshot) {
        print("Connection State: ${snapshot.connectionState}");
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        final reservationData = snapshot.data;

        if (reservationData == null || reservationData.isEmpty) {
          return Center(
            child: Text('No hay datos disponibles.'),
          );
        }

        return Center(
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('Nombre'),
              ),
              DataColumn(
                label: Text('Fecha'),
              ),
              DataColumn(
                label: Text('Estado'),
              ),
            ],
            rows: reservationData.map((reservationEntity) {
              return DataRow(cells: [
                DataCell(
                  InkWell(
                    onTap: () {
                      final id = reservationEntity.id;
                      print("id exitoso");
                      print(id);
                    },
                    child: Text(reservationEntity.name),
                  ),
                ),
                DataCell(
                  Text(reservationEntity.date.toDate().toString()),
                ),
                DataCell(
                  Text(
                    reservationEntity.active != null
                        ? (reservationEntity.active! ? 'Activo' : 'Inactivo')
                        : '',
                  ),
                ),
              ]);
            }).toList(),
          ),
        );
      },
    );
  }
}
