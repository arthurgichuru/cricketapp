import 'package:cricketapp/bloc/article/article_bloc.dart';
import 'package:cricketapp/data/repository/article_respository.dart';
import 'package:cricketapp/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:BlocProvider(
        create: (context)=> ArticleBloc(repository: ArticleRepositoryImpl()),
        child: HomePage(),
      ),
    );
  }
}

