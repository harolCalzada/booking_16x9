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
            snapshot.docs.map((doc) => doc).toList());
      },
    );
  }

  Future<void> addDeals({
    required String imageUrl,
    required String textButton,
    required String title,
    required String urlButton,
    required bool active,
  }) async {
    await FirebaseFirestore.instance.collection(collectionName).add({
      'image_url': imageUrl,
      'text_button': textButton,
      'title': title,
      'url_button': urlButton,
      'active': active,
    });
  }

  Stream<DealsEntity> getDeal(String id) {
    final String collectionName = 'deals';
    return FirebaseFirestore.instance
        .collection(collectionName)
        .doc(id)
        .snapshots()
        .map((doc) {
      if (doc.exists) {
        final DealsEntity deal = convertDynamicToDealsEntity(doc);
        return deal;
      } else {
        return DealsEntity(
          imageUrl: " ",
          textButton: " ",
          title: " ",
          urlButton: " ",
          active: false,
        );
      }
    });
  }
}
