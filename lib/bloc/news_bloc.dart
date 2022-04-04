import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_sample/data/models/api_model.dart';
import 'package:bloc_sample/data/repository/news_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepository newsRepository;

  NewsBloc(this.newsRepository) : super(NewsInitialState()) {
    on<FetchNewsEvent>((event, emit) async {
      try {
        List<Articles> articles = await newsRepository.getNews();
        emit(NewsLoadedState(articles));
      } catch (e) {
        emit(NewsErrorState(e.toString()));
      }
    });
  }
}
