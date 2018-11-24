import 'package:flutter/material.dart';
import '../bloc/news_bloc_provider.dart';
import '../widgets/news_list_view.dart';

class TopStories extends StatelessWidget{
  Widget build(BuildContext context){
    final bloc=NewsBlocProvider.of(context);
    return Scaffold(
      body: buildList(bloc),
    );
  }

  Widget buildList(NewsBloc bloc){
    return NewsListView(stream: bloc.topNews);
  }
}