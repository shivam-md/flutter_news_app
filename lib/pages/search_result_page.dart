
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/news_article_list_view_model.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/news_article_list.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("N E W S   A P P"),
      ),
      drawer: const CustomDrawer(),
      body: Consumer<NewsArticleListViewModel>(
        builder: (context, model, child){
          debugPrint("check length of fetched data : ${model.searchResultList?.length}");
          return NewsArticleList(articleList: model.searchResultList,);
        },
      ),
    );
  }
}
