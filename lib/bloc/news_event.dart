part of 'news_bloc.dart';

@immutable
abstract class NewsEvent extends Equatable {}

class FetchNewsEvent extends NewsEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FetchSportNewsEvent extends NewsEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
