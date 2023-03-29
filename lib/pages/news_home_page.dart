
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/news_article_list_view_model.dart';

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("N E W S   A P P"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(child: Placeholder(color: Colors.red,),),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G"),
            )
          ],
        ),
      ),
      body: Consumer<NewsArticleListViewModel>(
        builder: (context, model, child){
          var vm = model.newsArticleViewModel;
          debugPrint("check length of fetched data : ${vm?.length}");
          return ListView.builder(
            shrinkWrap: true,
              itemCount: vm!.length,
              itemBuilder: (context, index){
                return ListTile(
                  leading: SizedBox(
                    height: 100,
                    width: 100,
                    child: vm[index].urlToImage == null ? Placeholder() : Image.network(vm[index].urlToImage ?? "") ,
                  ),
                  title: Text(vm[index].title,maxLines: 2,),
                );
              },
          );
        },
      ),
    );
  }
}
