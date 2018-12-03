import 'package:flutter/material.dart';
import 'refresh.dart';
import 'dart:async';

class NewsListView extends StatelessWidget{
  final Stream stream;

  NewsListView({this.stream});

  Widget build(BuildContext context){
    return StreamBuilder(
      stream: stream,
      builder: (context,snapshot){
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final List<dynamic> articles=snapshot.data;
        return Refresh(articles: articles);
      },
    );
  }
}