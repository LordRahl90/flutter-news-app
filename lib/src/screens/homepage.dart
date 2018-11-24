import 'package:flutter/material.dart';

import 'top_stories.dart';
import 'all_news_list.dart';
import 'sources.dart';

class HomePage extends StatelessWidget{


  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Daily News'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Top Stories', icon: Icon(Icons.list)),
              Tab(text: 'All Stories', icon: Icon(Icons.list)),
              Tab(text: 'Sources', icon: Icon(Icons.list)),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            TopStories(),
            AllNewsList(),
            Sources()
          ],
        )
      ),
    );
  }
}