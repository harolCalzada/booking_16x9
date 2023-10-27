import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/models/slots_entity.dart';
import 'package:salon_app/repositories/config.dart';

class SlotsRepository extends RepositoryConfig {
  String collectionName = 'slots';

  Stream<List<SlotsEntity>> getSlots() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .snapshots()
        .map((snapshot) {
      return convertDynamicListToSlotsList(
        snapshot.docs.map((doc) {
          Map<String, dynamic> data = doc.data();
          return {
            'available': data['available'],
            'capacity': data['capacity'],
            'start_time': (data['start_time'] as Timestamp).toDate(),
            'end_time': (data['end_time'] as Timestamp).toDate(),
            'id': doc.id
          };
        }).toList(),
      );
    });
  }
}
