import 'package:cloud_firestore/cloud_firestore.dart';

class ReservationEntity {
  final Timestamp date;
  final String idSlots;
  final Map prices;
  final List services;
  final int totalAmount;
  final String name;
  final String id;
  bool? active;

  ReservationEntity({
    required this.date,
    required this.idSlots,
    required this.prices,
    required this.services,
    required this.totalAmount,
    required this.name,
    required this.id,
    this.active,
  });
}

List<ReservationEntity> convertDynamicListToReservationList(
    List<dynamic> dataList) {
  return dataList
      .map((data) => convertDynamicToReservationEntity(data))
      .toList();
}

ReservationEntity convertDynamicToReservationEntity(dynamic doc) {
  final id = doc['id'];
  final reservationEntity = ReservationEntity(
    date: doc['date'],
    idSlots: doc['id_slots'],
    prices: doc['prices'],
    services: doc['services'],
    totalAmount: doc['total_amount'],
    name: doc['name'],
    id: id,
    active: doc['active'],
  );

  print('id: ${reservationEntity.id}');

  return reservationEntity;
}
