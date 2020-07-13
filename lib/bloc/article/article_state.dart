import 'package:cricketapp/data/model/api_result_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


abstract class ArticleState extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];
}
class ArticleInitialState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadingState extends ArticleState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadedState extends ArticleState {

 final List<Articles> articles;

  ArticleLoadedState({@required this.articles});

  @override
  // TODO: implement props
  List<Object> get props => [articles];
}


class ArticleErrorState extends ArticleState {

 final  String message;

  ArticleErrorState({@required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
