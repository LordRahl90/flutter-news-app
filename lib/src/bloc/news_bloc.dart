import 'package:rxdart/rxdart.dart';
import '../resources/repository.dart';
import '../models/news_model.dart';

class NewsBloc{
  Repository _repository=Repository();
  final BehaviorSubject _allNewsFetcher = BehaviorSubject();
  final _topNewsFetcher=BehaviorSubject();
  final _sourceFetcher = BehaviorSubject();



  NewsBloc(){
    //we fetch and transform each dynamic record to a news Model.
    fetchTopNews();
    fetchAllNews();
  }
  
  get allNews => _allNewsFetcher.stream;
  get topNews => _topNewsFetcher.stream;

  fetchAllNews() async {
    print("I am called");
    final allNewsContent = await _repository.fetchAllNews();
    _allNewsFetcher.sink.add(allNewsContent);
  }

  fetchTopNews() async{
    final topNewsContent=await _repository.fetchTopNews();
    _topNewsFetcher.sink.add(topNewsContent);
  }

  fetchSources() async{
    // final sources=await _re
  }

  dispose(){
    _allNewsFetcher.close();
    _topNewsFetcher.close();
    _sourceFetcher.close();
  }
}