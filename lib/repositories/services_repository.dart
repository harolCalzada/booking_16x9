import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/models/services_entity.dart';
import 'package:salon_app/repositories/config.dart';

class ServiceRepository extends RepositoryConfig {
  String collectionName = 'services';

  Stream<List<ServiceEntity>> getServices() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .snapshots()
        .map(
      (snapshot) {
        return convertDynamicListToServicesList(
            snapshot.docs.map((doc) => doc).toList());
      },
    );
  }

  Future<void> addService({
    required String imageUrl,
    required double price,
    required String iconUrl,
    required String name,
    required bool active,
  }) async {
    await FirebaseFirestore.instance.collection(collectionName).add({
      'image_url': imageUrl,
      'price': price,
      'icon_url': iconUrl,
      'name': name,
      'active': active,
    });
  }

  Stream<ServiceEntity> getServiceStream(String id) {
    final String collectionName = 'service';
    return FirebaseFirestore.instance
        .collection(collectionName)
        .doc(id)
        .snapshots()
        .map((snapshot) {
      final serviceData = snapshot.data();
      if (serviceData != null) {
        final ServiceEntity service =
            convertDynamicToServiceEntity(serviceData);
        return service;
      } else {
        return ServiceEntity(
          imageUrl: " ",
          price: 0.0,
          iconUrl: " ",
          name: " ",
        );
      }
    });
  }
}
