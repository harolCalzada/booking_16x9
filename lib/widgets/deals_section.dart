import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/models/deals_entity.dart';
import 'package:salon_app/repositories/deals_repository.dart';

class DealsSection extends StatefulWidget {
  const DealsSection({Key? key});

  @override
  State<DealsSection> createState() => _DealsSectionState();
}

class _DealsSectionState extends State<DealsSection> {
  final DealsRepository _dealsRepository = DealsRepository();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DealsEntity>>(
      stream: _dealsRepository.getDeals(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Text('No hay datos disponibles.');
        }

        final List<DealsEntity> services = snapshot.data!;

        return Center(
          child: DataTable(
            columns: [
              DataColumn(
                label: Text('Nombre de la Promoción'),
              ),
              DataColumn(
                label: Text('Estado '),
              ),
            ],
            rows: services.map((deals) {
              return DataRow(cells: [
                DataCell(
                  InkWell(
                    onTap: () {
                      final id = deals.id;
                      print("id exitoso");
                      print(id); // Obtén el ID del servicio
                      context.goNamed('serviceDetail',
                          queryParameters: {'id': id});
                    },
                    child: Text(deals.title),
                  ),
                ),
                DataCell(
                  Text(
                    deals.active != null
                        ? (deals.active! ? 'Activo' : 'Inactivo')
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
