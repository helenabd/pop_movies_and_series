import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pop_movies_and_series/data/datasource/datasource.dart';
import 'package:pop_movies_and_series/data/models/models.dart';
import 'package:pop_movies_and_series/data/presentation/bloc/bloc.dart';
import 'package:pop_movies_and_series/domain/usecases/tmdb_usecase.dart';

class ShowBloc extends Bloc<ShowEvent, ShowState> {
  @override
  ShowState get initialState => ShowInitialState();

  @override
  Stream<ShowState> mapEventToState(ShowEvent event) async* {
    if (event is ShowIndexEvent) {
      print('calling show index event');
      yield* mapShowIndexEvent();
    } else if (event is ShowDetailEvent) {
      print('calling show detail event');
      yield* mapShowDetailEvent(event);
    }
  }

  Stream<ShowState> mapShowIndexEvent() async* {
    yield LoadingState();
    try {
      MovieResponseModel movieResponseModel =
          await TMDBDatasource.fetchAllMovies();
      yield IndexLoadedState(movieResponseModel);
    } catch (e) {
      print('Error $e');
      yield FailureState();
    }
  }

  Stream<ShowState> mapShowDetailEvent(ShowDetailEvent event) async* {
    MovieDetail movieDetail = await TMDBUseCase.showDetail(event.id);
    yield DetailLoadedState(movieDetail);
  }
}
