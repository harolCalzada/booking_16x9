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

        final List<DealsEntity> deals = snapshot.data!;

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
            rows: deals.map((deal) {
              return DataRow(cells: [
                DataCell(
                  InkWell(
                    onTap: () {
                      final id = deal.id;
                      print("id exitoso");
                      print(id);
                      context.goNamed('dealsDetailRoute',
                          pathParameters: {'id': id!});
                    },
                    child: Text(deal.title),
                  ),
                ),
                DataCell(
                  Text(
                    deal.active != null
                        ? (deal.active! ? 'Activo' : 'Inactivo')
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
