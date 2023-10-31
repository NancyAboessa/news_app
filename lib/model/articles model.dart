class ArticlesModel{
  final String ?image;
  final String title;
  final String ?subtitle;
  ArticlesModel({required this.image,required this.title,required this.subtitle});
  factory ArticlesModel.fromJson(json) {
    return ArticlesModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }

}