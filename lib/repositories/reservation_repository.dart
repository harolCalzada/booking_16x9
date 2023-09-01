import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salon_app/models/reservation_entity.dart';
import 'package:salon_app/repositories/config.dart';

class ReservationRepository extends RepositoryConfig {
  String collectionName = 'reservation';
  Stream<List<ReservationEntity>> getAllReservations() {
    return FirebaseFirestore.instance
        .collection(collectionName)
        .snapshots()
        .map(
      (snapshot) {
        return convertDynamicListToReservationList(
            snapshot.docs.map((doc) => doc).toList());
      },
    );
  }

  Future<void> addReservation({
    required String name,
    required String idUser,
    required String idSlots,
    required String district,
    required double totalAmount,
    required Timestamp date,
    required int telephoneNumber,
    required String email,
    required List<String> services,
    required bool active,
  }) async {
    await FirebaseFirestore.instance.collection(collectionName).add({
      'name': name,
      'iduser': idUser,
      'id_slots': idSlots,
      'district': district,
      'total_amount': totalAmount,
      'date': date,
      'telephone_number': telephoneNumber,
      'e_mail': email,
      'services': services,
      'active': active,
    });
  }

  Stream<ReservationEntity> getReservation(String id) {
    final String collectionName = 'reservation';
    return FirebaseFirestore.instance
        .collection(collectionName)
        .doc(id)
        .snapshots()
        .map((doc) {
      // final reservationData = doc;
      if (doc.exists) {
        final ReservationEntity reservation =
            convertDynamicToReservationEntity(doc);
        return reservation;
      } else {
        return ReservationEntity(
          name: "",
          district: "",
          idUser: "",
          telephoneNumber: 0,
          email: "",
          services: [],
          idSlots: "",
          totalAmount: 0,
          date: Timestamp(0, 0),
          active: false,
        );
      }
    });
  }
}
