import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../bloc/news_bloc_provider.dart';
import 'news_list_tile.dart';

class Refresh extends StatelessWidget{

final articles;
Refresh({this.articles});

  Widget build(BuildContext context){
    final bloc=NewsBlocProvider.of(context);
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context,index){
          final NewsModel newsItem=NewsModel.fromJson(articles[index]);
          return NewsListTile(newsModel: newsItem);
        },
      ),
      onRefresh: (){
        return bloc.fetchAllNews();
      },
    );
  }
}