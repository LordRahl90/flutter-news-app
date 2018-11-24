import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../models/news_model.dart';

class NewsDetail extends WebviewScaffold{

  final NewsModel newsModel;
  NewsDetail({String url, NewsModel newsModel}):
  newsModel=newsModel,
  super(
    url:url,
  initialChild:initialContent(),
  appBar: mainAppBar());
  

  static Widget initialContent(){
    return Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text('Waiting.....'),
      ),
    );
  }

  static Widget mainAppBar(){
    return AppBar(
      title: Text("We Are here"),
      leading: Icon(Icons.arrow_back_ios),
    );
  }
}