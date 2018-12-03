import 'package:flutter/material.dart';
import './src/bloc/news_bloc_provider.dart';
import './src/app.dart';

void main(){
  runApp(
      NewsBlocProvider(
        child: App(),
      )
    );
}