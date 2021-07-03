import 'package:equatable/equatable.dart';
import 'package:pop_movies_and_series/data/models/models.dart';

abstract class ShowState extends Equatable {
  const ShowState();

  @override
  List<Object> get props => [];
}

class ShowInitialState extends ShowState {}

class IndexLoadedState extends ShowState {
  final MovieResponseModel movieResponseModel;

  IndexLoadedState(this.movieResponseModel);
}

class DetailLoadedState extends ShowState {
  final MovieDetail movieDetail;

  DetailLoadedState(this.movieDetail);
}

class LoadingState extends ShowState {}

class FailureState extends ShowState {}
