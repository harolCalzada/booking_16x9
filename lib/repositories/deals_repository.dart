import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/models/deals_entity.dart';
import 'package:salon_app/repositories/config.dart';

class DealsRepository extends RepositoryConfig {
  String collectionName = 'deals';

  Stream<List<DealsEntity>> getDeals() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .snapshots()
        .map(
      (snapshot) {
        return convertDynamicListToDealsList(
            snapshot.docs.map((doc) => doc.data()).toList());
      },
    );
  }
}
