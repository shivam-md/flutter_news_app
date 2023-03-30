

import 'package:flutter/material.dart';
import 'package:untitled2/viewmodels/news_article_view_model.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({Key? key, required this.article}) : super(key: key);

  final NewsArticleViewModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("N E W S   A P P"),),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(

          children: [
            Container(

              width: double.infinity,
                child: Text(article.title, overflow: TextOverflow.clip,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
                child: Hero(tag: "tag1",child:  article.urlToImage == null ? Image.asset("assets/images/news_stock_pic.jpg") : Image.network(article.urlToImage ?? ""), ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
                child: Text(article.description, overflow: TextOverflow.clip,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18, color: Colors.grey.shade800),)
            ),
          ],
        ),
      ),
    );
  }
}
