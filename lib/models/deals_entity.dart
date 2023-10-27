class DealsEntity {
  final String imageUrl;
  final String textButton;
  final String title;
  final String urlButton;
  bool? active;
  final String? id;

  DealsEntity({
    required this.imageUrl,
    required this.textButton,
    required this.title,
    required this.urlButton,
    this.active,
    this.id,
  });
}

List<DealsEntity> convertDynamicListToDealsList(List<dynamic> dataList) {
  return dataList.map((data) => convertDynamicToDealsEntity(data)).toList();
}

DealsEntity convertDynamicToDealsEntity(dynamic doc) {
  final id = doc['id'];
  final dealsEntity = DealsEntity(
    imageUrl: doc['image_url'],
    textButton: doc['text_button'],
    title: doc['title'],
    urlButton: doc['url_button'],
    active: doc['active'],
    id: id,
  );
  print('id: ${dealsEntity.id}');

  return dealsEntity;
}
