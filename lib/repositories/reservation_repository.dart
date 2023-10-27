import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/repositories/config.dart';

class ReservationRepository extends RepositoryConfig {
  String collectionName = 'reservation';

  Future<void> addReservation({
    required DateTime date,
    required String idSlots,
    required List<String> services,
    required double totalAmount,
  }) async {
    await FirebaseFirestore.instance.collection(collectionName).add({
      'date': date,
      'id_slots': idSlots,
      'services': services,
      'total_amount': totalAmount,
    });
  }

  // Stream<List<ReservationEntity>> getReservation() {
  //   return FirebaseFirestore.instance
  //       .collection(collectionName)
  //       .snapshots()
  //       .map((snapshot) {
  //     return convertDynamicListToReservationList(
  //       snapshot.docs.map((doc) {
  //         Map<String, dynamic> data = doc.data();
  //         return {
  //           'date': data['date'],
  //           'idSlots': data['id_slots'],
  //           'prices': data['price'],
  //           'services': data['services'],
  //           'totalAmount': data['total_amount'],
  //         };
  //       }).toList(),
  //     );
  //   });
  // }
}
