import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'dart:convert';

import 'package:mynewsapp/src/resources/news_api_provider.dart';
import 'package:mynewsapp/src/models/news_model.dart';

void main(){
  test("Test Sum is correct",(){
    expect(4,(2+2));
  });

  

  test("Fetch All Headlines",() async{
    final newsAPI=NewsAPI();
    final jsonMap={
      "status": "ok",
      "totalResults": 11719,
      "articles":
      [
          {
            "source": {"id": "bbc-news", "name": "BBC News"},
            "author": "https://www.facebook.com/bbcnews",
            "title": "Letter from Africa: Nigeria - a young country for old men, description: Why have Nigeria's main parties both chosen septuagenarian presidential candidates?",
            "url": "https://www.bbc.co.uk/news/world-africa-46017361",
            "urlToImage": "https://ichef.bbci.co.uk/news/1024/branded_news/3713/production/_104099041_buhari_atiku976.png",
            "publishedAt": "2018-10-31T01:17:34Z",
            "content": "Image copyright AFP Image caption President Muhammudu Buhari, (left) 71 will face his strongest challenge from Atiku Abubakar, 75 In our series of letters from African journalists, editor-in-chief of Nigerias Daily Trust newspaper Mannir Dan Ali looks at why"
          }
      ]
    };
    newsAPI.client=MockClient((request) async{
      return Response(json.encode(jsonMap),200);
    });
    final articles=await newsAPI.fetchAllNews();
    print(articles);
    // final newsItem=NewsModel.fromJson(articles[0]);
    // expect("bbc-news", newsItem.source.id);
  });


  test("Fetch Top Headlines",()async{
      final newsAPI=NewsAPI();
      final response=await newsAPI.fetchTopNews("ng");
      //test that d content is more than zero.
  });
}