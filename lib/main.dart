
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/pages/home_page.dart';
import 'package:untitled2/viewmodels/news_article_list_view_model.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => NewsArticleListViewModel(),
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
