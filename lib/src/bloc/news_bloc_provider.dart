import 'package:flutter/material.dart';
import 'news_bloc.dart';
export 'news_bloc.dart';

class NewsBlocProvider extends InheritedWidget{

  final NewsBloc bloc;

  NewsBlocProvider({Key key,Widget child})
  : bloc=NewsBloc(),
  super(key:key,child:child);

  @override
  bool updateShouldNotify(_) =>true;

  static NewsBloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(NewsBlocProvider) as NewsBlocProvider).bloc;
  }

}