import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/models/reservation_entity.dart';
import 'package:salon_app/repositories/config.dart';

class ReservationRepository extends RepositoryConfig {
  String collectionName = 'reservation';
  Stream<List<ReservationEntity>> getReservation() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .snapshots()
        .map(
      (snapshot) {
        return convertDynamicListToReservationList(
            snapshot.docs.map((doc) => doc.data()).toList());
      },
    );
  }

  Future<void> addReservation({
    required Timestamp date,
    required String idSlots,
    required List<String> services,
    required double totalAmount,
    required String name,
    required String idUser,
    required bool active,
  }) async {
    await FirebaseFirestore.instance.collection(collectionName).add({
      'date': date,
      'id_slots': idSlots,
      'services': services,
      'total_amount': totalAmount,
      'name': name,
      'id_user': idUser,
      'active': active,
    });
  }
}
