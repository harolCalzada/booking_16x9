import 'package:cloud_firestore/cloud_firestore.dart';

class ReservationEntity {
  final Timestamp date;
  final String idSlots;
  final List services;
  final int totalAmount;
  final String name;
  final String id;
  bool? active;

  ReservationEntity({
    required this.date,
    required this.idSlots,
    required this.services,
    required this.totalAmount,
    required this.name,
    required this.id,
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
    totalAmount: doc.data()['total_amount'],
    name: doc.data()['name'],
    id: id,
    active: doc.data()['active'],
  );

  print('id: ${reservationEntity.id}');

  return reservationEntity;
}
