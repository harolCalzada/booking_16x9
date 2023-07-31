import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/models/services_entity.dart';
import 'package:salon_app/widgets/icon_service.dart';
import 'package:salon_app/widgets/modal.dart';
import 'package:salon_app/repositories/services_repository.dart'; // Replace this import with the actual path to your ServicesRepository file

class ServicesSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ServiceEntity>>(
      stream: ServicesRepository().getServices(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        final List<ServiceEntity> documents = snapshot.data ?? [];

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            for (var doc in documents)
              Expanded(
                child: InkWell(
                  onTap: () {
                    servicesModal(
                      context,
                      UniqueKey(),
                      doc.imageUrl,
                      doc.name,
                      doc.price.toDouble(),
                    );
                  },
                  child: IconServices(
                    iconUrl: doc.iconUrl,
                    serviceName: doc.name,
                    textColor: Color(gradientColor),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
