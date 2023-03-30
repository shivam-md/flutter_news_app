
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled2/models/news_model.dart';
import 'package:untitled2/util/constant.dart';

class NewsServices{

  Future<List<NewsModel>> fetchNewsByKeyword({required String text}) async {

    // api key
    final url = Uri.parse(Constant.searchNewsByKeyword(text));

    // fetching api data
    final response = await http.get(url);

    // news articles fetched successfully
    if(response.statusCode == 200){

      // json data into readable form
      final result = jsonDecode(response.body);

      // storing 'articles' section from the received data
      Iterable list = result["articles"];

      // returning formatted data in form of list
      return list.map((article) => NewsModel.fromJSON(article)).toList();
    }
    else{
      // if status code is not 200 it means data fetch failed.
      // in that case throw an exception
      throw Exception("Failed to get search result");
    }
  }

  Future<List<NewsModel>> getTopHeadlines() async{

    // api key
    final url = Uri.parse(Constant.apiURL);

    // fetching api data
    final response = await http.get(url);

    // news articles fetched successfully
    if(response.statusCode == 200){

      // json data into readable form
      final result = jsonDecode(response.body);

      // storing 'articles' section from the received data
      Iterable list = result["articles"];

      // returning formatted data in form of list
      return list.map((article) => NewsModel.fromJSON(article)).toList();
    }
    else{
      // if status code is not 200 it means data fetch failed.
      // in that case throw an exception
      throw Exception("Failed to get top news");
    }
  }
}