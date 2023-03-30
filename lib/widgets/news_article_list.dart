import 'package:flutter/material.dart';
import 'package:untitled2/pages/news_detail_page.dart';


class NewsArticleList extends StatelessWidget {
  const NewsArticleList({Key? key,required this.articleList}) : super(key: key);
  final dynamic articleList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: articleList!.length,
      itemBuilder: (context, index){
        return Container(
          padding: const EdgeInsets.all(4),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsDetailPage(article: articleList[index],)));
            },
            child: ListTile(
              leading: SizedBox(
                height: 100,
                width: 100,
                child: Hero(tag: "tag1",child:  articleList[index].urlToImage == null ? Image.asset("assets/images/news_stock_pic.jpg") : Image.network(articleList[index].urlToImage ?? ""), ),
              ),
              title: Text(articleList[index].title,maxLines: 2),
            ),
          ),
        );
      },
    );
  }
}
