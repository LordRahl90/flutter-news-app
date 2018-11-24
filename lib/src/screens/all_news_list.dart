import 'package:flutter/material.dart';
import '../bloc/news_bloc_provider.dart';
import '../widgets/news_list_view.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AllNewsList extends StatelessWidget{

  final flutterWebViewPlugin=FlutterWebviewPlugin();
  
  Widget build(BuildContext context){
    final bloc=NewsBlocProvider.of(context);
    return buildList(bloc);
  }

  Widget buildList(NewsBloc bloc){
    return NewsListView(stream: bloc.allNews);
  }
}