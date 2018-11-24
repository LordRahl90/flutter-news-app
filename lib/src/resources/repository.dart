import 'news_api_provider.dart';
import 'dart:async';


class Repository{

  List<Source> _sources=<Source>[
    NewsAPI()
  ];


  Future<List<dynamic>> fetchAllNews() async {
    return await _sources[0].fetchAllNews();
  }

  Future<List<dynamic>> fetchTopNews() async{
    return await _sources[0].fetchTopNews("ng");
  }

}

abstract class Source{
  fetchTopNews(String country);
  Future<List<dynamic>> fetchAllNews();
}