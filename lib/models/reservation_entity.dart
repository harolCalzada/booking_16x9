import 'package:cloud_firestore/cloud_firestore.dart';

class ReservationEntity {
  final Timestamp date;
  final String idSlots;
  final List services;
  final double totalAmount;
  final String name;
  final String district;
  final String id;
  final int telephoneNumber;
  final String email;
  bool? active;

  ReservationEntity({
    required this.date,
    required this.idSlots,
    required this.services,
    required this.totalAmount,
    required this.name,
    required this.district,
    required this.id,
    required this.telephoneNumber,
    required this.email,
    this.active,
  });
}

List<ReservationEntity> convertDynamicListToReservationList(
    List<dynamic> dataList) {
  print("hola");
  print(
      dataList.map((data) => convertDynamicToReservationEntity(data)).toList());
  return dataList
      .map((data) => convertDynamicToReservationEntity(data))
      .toList();
}

ReservationEntity convertDynamicToReservationEntity(dynamic doc) {
  final id = doc.id;
  final reservationEntity = ReservationEntity(
    date: doc.data()['date'],
    idSlots: doc.data()['id_slots'],
    services: doc.data()['services'],
    totalAmount: doc.data()['total_amount'].toDouble(),
    name: doc.data()['name'],
    id: doc.data()['iduser'],
    district: doc.data()['district'],
    telephoneNumber: doc.data()['telephone_number'],
    active: doc.data()['active'],
    email: doc.data()['e_mail'],
  );

  print('id: ${reservationEntity.id}');

  return reservationEntity;
}
