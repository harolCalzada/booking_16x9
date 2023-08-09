import 'package:flutter/material.dart';
import 'package:salon_app/constants/colors.dart';
import 'package:salon_app/models/services_entity.dart';
import 'package:salon_app/repositories/services_repository.dart';
import 'package:salon_app/widgets/modal.dart';

class ServicesSectionWidget extends StatefulWidget {
  final bool add;

  ServicesSectionWidget({required this.add});

  @override
  _ServicesSectionWidgetState createState() => _ServicesSectionWidgetState();
}

class _ServicesSectionWidgetState extends State<ServicesSectionWidget> {
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
                  child: widget.add
                      ? ServicesIcon(
                          iconUrl: doc.iconUrl,
                          serviceName: doc.name,
                          textColor: Color(gradientColor),
                        )
                      : ServiceIconAddWidget(
                          name: doc.name,
                          iconUrl: doc.iconUrl,
                        ),
                ),
              ),
          ],
        );
      },
    );
  }
}

class ServicesIcon extends StatelessWidget {
  final String iconUrl;
  final String serviceName;
  final Color? textColor;

  const ServicesIcon({
    required this.iconUrl,
    required this.serviceName,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 68,
          height: 68,
          // padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(backgroundImage),
            border: Border.all(color: Color(secondaryColor)),
          ),
          child: Image.network(iconUrl),
          // child: Image(
          //     // color: Colors.black,
          //     image: AssetImage(imageUrl),
          //     fit: BoxFit.cover),
        ),
        SizedBox(height: 10),
        Text(serviceName, style: TextStyle(color: (textColor), fontSize: 14)),
        SizedBox(height: 10)
      ],
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
            ServicesIcon(
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
