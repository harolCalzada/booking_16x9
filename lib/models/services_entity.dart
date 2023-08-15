import 'package:flutter/material.dart';

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
  return dataList.map((data) => convertDynamicToServiceEntity(data)).toList();
}

ServiceEntity convertDynamicToServiceEntity(dynamic doc) {
  final id = doc.id;
  final serviceEntity = ServiceEntity(
    imageUrl: doc.data()['image_url'],
    price: doc.data()['price'].toDouble(),
    iconUrl: doc.data()['icon_url'],
    name: doc.data()['name'],
    active: doc.data()['active'],
    id: doc.data()['id'],
  );

  print('id: ${serviceEntity.id}');

  return serviceEntity;
}
