part of 'news_bloc.dart';

@immutable
abstract class NewsState extends Equatable {}

class NewsInitialState extends NewsState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NewsLoadingState extends NewsState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NewsLoadedState extends NewsState {
  List<Articles> articles;

  NewsLoadedState(this.articles);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NewsErrorState extends NewsState {
  String message;

  NewsErrorState(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
