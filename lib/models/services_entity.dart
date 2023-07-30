import 'package:flutter/material.dart';

class ServiceEntity {
  final String imageUrl;

  final double price;
  final String iconUrl;
  final String name;

  ServiceEntity({
    this.imageUrl,
    this.price,
    this.iconUrl,
    this.name,
  });
}

List<ServiceEntity> convertDynamicListToServicesList(List<dynamic> dataList) {
  return dataList.map((data) => convertDynamicToServiceEntity(data)).toList();
}

ServiceEntity convertDynamicToServiceEntity(dynamic data) {
  return ServiceEntity(
    imageUrl: data['image_url'],
    price: data['price'].toDouble(),
    iconUrl: data['icon_url'],
    name: data['name'],
  );
}
