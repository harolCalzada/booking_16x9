import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:salon_app/models/deals_entity.dart';
import 'package:salon_app/repositories/deals_repository.dart';
import 'package:salon_app/widgets/deal.dart';

class DealSection extends StatefulWidget {
  const DealSection({Key? key}) : super(key: key);

  @override
  State<DealSection> createState() => _DealSectionState();
}

class _DealSectionState extends State<DealSection> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DealsEntity>>(
      stream: DealsRepository().getDeals(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        final dealsData = snapshot.data;

        if (dealsData == null || dealsData.isEmpty) {
          return ListView();
        }

        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dealsData.length,
          itemBuilder: (context, index) {
            final deal = dealsData[index];
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Deals(
                imageUrl: deal.imageUrl,
                textButton: deal.textButton,
                title: deal.title,
                urlButton: deal.urlButton,
              ),
            );
          },
        );
      },
    );
  }
}
