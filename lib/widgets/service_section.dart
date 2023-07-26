import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/widgets/icon_service.dart';
import 'package:salon_app/widgets/modal.dart';
import 'package:salon_app/repositories/services_repository.dart'; // Replace this import with the actual path to your ServicesRepository file

class ServicesSectionWidget extends StatelessWidget {
  const ServicesSectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: ServicesRepository()
          .getServices(), // Create an instance of ServicesRepository and call getServices()
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        // Extract the data from the snapshot and create a list of documents
        final List<DocumentSnapshot> documents = snapshot.data.docs;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            for (var doc in documents)
              Expanded(
                child: InkWell(
                  onTap: () {
                    servicesModal(context);
                  },
                  child: IconServices(
                    // colorImg: Color(secondarycolor),
                    iconUrl: doc[
                        'icon_url'], // Use the image field from the document
                    serviceName:
                        doc['name'], // Use the name field from the document
                    // columnBg: Color(gradientcolor),
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
