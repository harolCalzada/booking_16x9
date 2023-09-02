import 'package:cloud_firestore/cloud_firestore.dart';

class ReservationEntity {
  final Timestamp date;
  final String idSlots;
  final List services;
  final double totalAmount;
  final String name;
  final String district;
  final String idUser;
  final int telephoneNumber;
  final String email;
  bool? active;
  final String? id;

  ReservationEntity({
    required this.date,
    required this.idSlots,
    required this.services,
    required this.totalAmount,
    required this.name,
    required this.district,
    required this.idUser,
    required this.telephoneNumber,
    required this.email,
    this.active,
    this.id,
  });
}

List<ReservationEntity> convertDynamicListToReservationList(
    List<dynamic> dataList) {
  return dataList.map((doc) => convertDynamicToReservationEntity(doc)).toList();
}

ReservationEntity convertDynamicToReservationEntity(dynamic doc) {
  final id = doc.id;
  final reservationEntity = ReservationEntity(
    date: doc['date'],
    idSlots: doc['id_slots'],
    services: doc['services'],
    totalAmount: doc['total_amount'].toDouble(),
    name: doc['name'],
    idUser: doc['iduser'],
    district: doc['district'],
    telephoneNumber: doc['telephone_number'],
    active: doc['active'],
    email: doc['e_mail'],
    id: id,
  );

  print('id: ${reservationEntity.id}');

  return reservationEntity;
}
