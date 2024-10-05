
class ArticleModel {
  final String? image;
  final String title;
  final String? description;

  ArticleModel({required this.image, required this.title, required this.description});

  factory ArticleModel.fromJson(json){
    return ArticleModel(image: json["urlToImage"], title: json["title"], description: json["description"]);
  }
}

