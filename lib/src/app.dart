import 'package:flutter/material.dart';
import './bloc/news_bloc_provider.dart';
import './screens/homepage.dart';

class App extends StatelessWidget{

  // Widget build(context){
  //   return MaterialApp(
  //     title: "Hello World",
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Hello World!'),
  //       ),
  //       body: Text("Hello WOld"),
  //     )
  //   );
  // }
  Widget build(BuildContext context){
    return MaterialApp(
      title: "My News App",
      onGenerateRoute: routes
    );
  }

  Route routes(RouteSettings settings){
      if(settings.name=="/"){
        return MaterialPageRoute(
          builder: (context){
            final bloc=NewsBlocProvider.of(context);
            // bloc.fetchAllNews();
            // bloc.fetchTopNews();
            return HomePage();
          }
        );
      }
  }
}