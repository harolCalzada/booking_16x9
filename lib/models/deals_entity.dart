class DealsEntity {
  final String imageUrl;
  final String textButton;
  final String title;
  final String urlButton;

  DealsEntity({
    required this.imageUrl,
    required this.textButton,
    required this.title,
    required this.urlButton,
  });
}

List<DealsEntity> convertDynamicListToDealsList(List<dynamic> dataList) {
  return dataList.map((data) => convertDynamicToDealsEntity(data)).toList();
}

DealsEntity convertDynamicToDealsEntity(dynamic data) {
  return DealsEntity(
    imageUrl: data['image_url'],
    textButton: data['text_button'],
    title: data['title'],
    urlButton: data['url_button'],
  );
}
