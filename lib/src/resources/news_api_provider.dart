import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';
import 'repository.dart';

class NewsAPI implements Source{

  final _root='https://newsapi.org/v2/everything?apiKey=9d206d9be4174155bf59edb914ce4101&pageSize=10&q="Nigeria"';
  final _url="https://newsapi.org/v2/top-headlines?apiKey=9d206d9be4174155bf59edb914ce4101&country=";
  String _sourceUrl="https://newsapi.org/v2/sources?apiKey=9d206d9be4174155bf59edb914ce4101&language=en";

  Client client=Client();

  Future<List<dynamic>> fetchAllNews() async {
    final response=await client.get(_root);
    final parsedJson=json.decode(response.body);
    final List<dynamic> articles=parsedJson["articles"];
    return articles;
  }

  Future<List<dynamic>> fetchTopNews(String country) async {
    final response=await client.get(_url+country);
    final parsedJson=json.decode(response.body);
    final List<dynamic> articles=parsedJson["articles"];
    return articles;
  }

  fetchSources() async {
    final response=await client.get(_sourceUrl);
    final parsedJson=json.decode(response.body);
    return parsedJson;
  }
}