

import 'package:flutter/cupertino.dart';
import 'package:untitled2/models/news_model.dart';

class NewsArticleViewModel{
  final NewsModel? _newsModel;

  NewsArticleViewModel({NewsModel? newsModel}) : _newsModel = newsModel;

  String get title{
    return _newsModel!.title;
  }

  String get description{
    return _newsModel!.description;
  }

  String get url{
    return _newsModel!.url;
  }

  String? get urlToImage{
    debugPrint("url error message ${_newsModel?.urlToImage}");
    try{
      return _newsModel?.urlToImage;
    }
    catch(error){
      //throw Exception("image url is null");
      debugPrint("url image error: $error");
    }
  }

}