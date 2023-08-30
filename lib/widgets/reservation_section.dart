import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Text('No hay datos disponibles.');
        }

        final reservationData = snapshot.data;

        if (reservationData == null || reservationData.isEmpty) {
          return Center(
            child: Text('No hay datos disponibles.'),
          );
        }
        final List<ReservationEntity> reservation = snapshot.data!;
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
            rows: reservation.map((reservation) {
              return DataRow(cells: [
                DataCell(
                  InkWell(
                    onTap: () {
                      final id = reservation.id;
                      print("id exitoso");
                      print(id);
                      context.goNamed("reservationDetailRoute",
                          pathParameters: {'id': id!});
                    },
                    child: Text(reservation.name),
                  ),
                ),
                DataCell(
                  Text(reservation.date.toDate().toString()),
                ),
                DataCell(
                  Text(
                    reservation.active != null
                        ? (reservation.active! ? 'Activo' : 'Inactivo')
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
