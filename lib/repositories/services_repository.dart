import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/repositories/config.dart';

class ServicesRepository extends RepositoryConfig {
  String CollectionName = 'services';

  Stream getServices() {
    return FirebaseFirestore.instance.collection(CollectionName).snapshots();
  }
}
