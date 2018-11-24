
import './source_model.dart';

class NewsModel{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  NewsModel.fromJson(Map<String,dynamic> parsedJson):
  source=Source(id: parsedJson["source"]["id"],name: parsedJson["source"]["name"]),
  author=parsedJson["author"],
  title=parsedJson["title"],
  description=parsedJson["description"],
  url=parsedJson["url"],
  urlToImage=parsedJson["urlToImage"],
  publishedAt=parsedJson["publishedAt"],
  content=parsedJson["content"];
}