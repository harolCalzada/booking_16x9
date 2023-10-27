import 'package:flutter/material.dart';
import 'package:salon_app/models/slots_entity.dart';
import 'package:salon_app/repositories/slots_repository.dart';
import 'package:salon_app/widgets/slots.dart';

class SlotsSection extends StatelessWidget {
  const SlotsSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SlotsEntity>>(
      stream: SlotsRepository().getSlots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        final slotsData = snapshot.data;

        if (slotsData == null || slotsData.isEmpty) {
          return Center(child: Text('No hay datos disponibles'));
        }

        return Container(
          alignment: Alignment.center,
          child: Wrap(
            runSpacing: 22,
            spacing: 8,
            children: slotsData.map((slotsEntity) {
              return Slots(
                startTime: slotsEntity.startTime,
                endTime: slotsEntity.endTime,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
