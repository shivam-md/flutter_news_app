

import 'package:flutter/cupertino.dart';
import 'package:untitled2/models/news_model.dart';
import 'package:untitled2/services/news_services.dart';
import 'package:untitled2/viewmodels/news_article_view_model.dart';

class NewsArticleListViewModel extends ChangeNotifier{
  
  List<NewsArticleViewModel>? _topHeadlineList;

  List<NewsArticleViewModel>? _searchResultList;

  get searchResultList {
    return _searchResultList;
  }

  get topHeadlineList {
    return _topHeadlineList;
  }


  NewsArticleListViewModel(){
    populateTopHeadlines();
  }

  void populateTopHeadlines() async{

    // fetches top headlines from news api using webservice
    List<NewsModel> newsModel = await NewsServices().getTopHeadlines();

    // takes list of news by calling newsModel inside news article view model.
    _topHeadlineList = newsModel.map((article) => NewsArticleViewModel(newsModel: article)).toList();
    notifyListeners();
  }
}