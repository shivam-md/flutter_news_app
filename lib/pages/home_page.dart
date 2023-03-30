
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/widgets/custom_drawer.dart';
import 'package:untitled2/widgets/news_article_list.dart';

import '../viewmodels/news_article_list_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("N E W S   A P P"),
      ),
      drawer: const CustomDrawer(),
      body: Consumer<NewsArticleListViewModel>(
        builder: (context, model, child){
          debugPrint("check length of fetched data : ${model.topHeadlineList?.length}");
          return NewsArticleList(articleList: model.topHeadlineList,);
        },
      ),
    );
  }
}
