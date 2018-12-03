import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import '../models/news_model.dart';

class NewsListTile extends StatelessWidget{
  
  NewsModel newsModel;

  NewsListTile({this.newsModel});

  Widget build(BuildContext context){
    
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(newsModel.title),
          subtitle: Text(newsModel.source.name??"Anonymous"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              newsModel.urlToImage=="" || newsModel.urlToImage==null ?"https://placeholdr.it/200/200":newsModel.urlToImage
            ),
          ),
          onTap: (){
            Navigator.push(context, 
              MaterialPageRoute(
                builder: (context)=>new WebviewScaffold(
                  url: newsModel.url,
                  appBar: AppBar(
                    title: Text(newsModel.title)
                  ),
                  initialChild: Container(
                    color:Colors.redAccent,
                    child: Center(
                      child: CircularProgressIndicator(),
                    )
                  ),
                )
              )
            );
          },
        ),
        Divider(height: 8.0)
      ],
    );
  }
}