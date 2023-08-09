class SlotsEntity {
  final bool available;
  final int capacity;
  final DateTime startTime;
  final DateTime endTime;
  final String id;

  SlotsEntity({
    required this.available,
    required this.capacity,
    required this.startTime,
    required this.endTime,
    required this.id,
  });
}

List<SlotsEntity> convertDynamicListToSlotsList(List<dynamic> dataList) {
  return dataList.map((data) => convertDynamicToSlotsEntity(data)).toList();
}

SlotsEntity convertDynamicToSlotsEntity(dynamic data) {
  return SlotsEntity(
    available: data['available'],
    capacity: data['capacity'],
    startTime: data['start_time'],
    endTime: data['end_time'],
    id: data['id'],
  );
}
