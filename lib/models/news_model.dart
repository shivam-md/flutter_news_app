

class NewsModel{
  final url;
  final urlToImage;
  final title;
  final description;

  NewsModel({this.url,this.urlToImage,this.title,this.description});

  factory NewsModel.fromJSON(Map<String,dynamic> json){
    return NewsModel(
        url: json["url"],
        urlToImage: json["urlToImage"],
        title: json["title"],
        description: json["description"],
    );
  }

}