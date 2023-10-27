import 'dart:ffi';

class ReservationEntity {
  final DateTime date;
  final String idSlot;
  final Map prices;
  final Array services;
  final int totalAmount;

  ReservationEntity({
    required this.date,
    required this.idSlot,
    required this.prices,
    required this.services,
    required this.totalAmount,
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
  );
}
