

class NewsModel{
  final url;
  final imageUrl;
  final title;
  final description;

  NewsModel({this.url,this.imageUrl,this.title,this.description});

  factory NewsModel.fromJSON(Map<String,dynamic> json){
    return NewsModel(
        url: json["url"],
        imageUrl: json["imageUrl"],
        title: json["title"],
        description: json["description"],
    );
  }

}