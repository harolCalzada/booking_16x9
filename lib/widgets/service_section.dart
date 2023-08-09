import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/models/services_entity.dart';
import 'package:salon_app/widgets/icon_service.dart';
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
              ServiceIconAddWidget(
                name: doc.name,
                iconUrl: doc.iconUrl,
              ),
          ],
        );
      },
    );
  }
}

class ServiceIconAddWidget extends StatefulWidget {
  final String name;
  final String iconUrl;

  ServiceIconAddWidget({required this.name, required this.iconUrl});

  @override
  State<ServiceIconAddWidget> createState() => _ServiceIconAddWidgetState();
}

class _ServiceIconAddWidgetState extends State<ServiceIconAddWidget> {
  bool isCheckedMakeup = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            isCheckedMakeup = !isCheckedMakeup;
          });
        },
        child: Stack(
          children: [
            IconServices(
              // colorImg: isCheckedMakeup ? Colors.red : Color(gradientColor),
              iconUrl: widget.iconUrl,
              serviceName: widget.name,
              // columnBg: makeupColor,
              textColor: Color(secondaryColor),
            ),
            Positioned(
              bottom: 15,
              right: 18,
              child: Checkbox(
                value: isCheckedMakeup,
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onChanged: (value) {
                  setState(() {
                    isCheckedMakeup = value ?? false;
                  });
                },
                activeColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
