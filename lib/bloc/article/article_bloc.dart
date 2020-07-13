import 'package:cricketapp/bloc/article/article_event.dart';
import 'package:cricketapp/bloc/article/article_state.dart';
import 'package:cricketapp/data/model/api_result_model.dart';
import 'package:cricketapp/data/repository/article_respository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {

  final ArticleRepository repository;

  ArticleBloc({@required this.repository}) : super(null);

  @override
  // TODO: implement initialState
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is FetchArticlesEvent) {
      yield ArticleLoadingState();
      try {
        List<Articles> articles = await repository.getArticles();
        yield ArticleLoadedState(articles: articles);
      } catch (e) {
        yield ArticleErrorState(message: e.toString());
      }
    }
  }

}