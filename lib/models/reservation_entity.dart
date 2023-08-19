import 'package:cloud_firestore/cloud_firestore.dart';

class ReservationEntity {
  final Timestamp date;
  final String idSlot;
  final Map prices;
  final List services;
  final int totalAmount;
  final String name;
  final String id;
  bool? active;

  ReservationEntity({
    required this.date,
    required this.idSlot,
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

ReservationEntity convertDynamicToReservationEntity(dynamic data) {
  return ReservationEntity(
    date: data['date'],
    idSlot: data['id_slot'],
    prices: data['prices'],
    services: data['services'],
    totalAmount: data['total_amount'],
    name: data['name'],
    id: data['id'],
    active: data['active'],
  );
}
