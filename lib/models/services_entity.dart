class ServiceEntity {
  final String imageUrl;
  final double price;
  final String iconUrl;
  final String name;
  bool? active;
  final String? id;

  ServiceEntity({
    required this.imageUrl,
    required this.price,
    required this.iconUrl,
    required this.name,
    this.active,
    this.id,
  });
}

List<ServiceEntity> convertDynamicListToServicesList(List<dynamic> dataList) {
  return dataList.map((doc) => convertDynamicToServiceEntity(doc)).toList();
}

ServiceEntity convertDynamicToServiceEntity(dynamic doc) {
  print("hola 3");
  print(doc['price']);
  print(doc.id);

  final id = doc.id;
  final serviceEntity = ServiceEntity(
    imageUrl: doc['image_url'],
    price: doc['price'].toDouble(),
    iconUrl: doc['icon_url'],
    name: doc['name'],
    active: doc['active'],
    id: id,
  );

  print('id: ${serviceEntity.id}');

  return serviceEntity;
}
