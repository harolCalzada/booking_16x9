import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/models/services_entity.dart';
import 'package:salon_app/repositories/config.dart';

class ServicesRepository extends RepositoryConfig {
  String collectionName = 'services';

  // ServicesRepository(getServices);

  Stream<List<ServiceEntity>> getServices() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .snapshots()
        .map(
      (snapshot) {
        return convertDynamicListToServicesList(
            snapshot.docs.map((doc) => doc.data()).toList());
      },
    );
  }

  void updateService(ServiceEntity service) {}
}
