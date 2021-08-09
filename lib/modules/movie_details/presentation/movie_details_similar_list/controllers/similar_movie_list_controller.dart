import 'package:mobx/mobx.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_similar_movies.dart';

part 'similar_movie_list_controller.g.dart';

class SimilarMovieListController = _SimilarMovieListController
    with _$SimilarMovieListController;

abstract class _SimilarMovieListController with Store {
  final GetSimilarMovies usecase;

  _SimilarMovieListController(this.usecase);

  @observable
  SimilarMovieListState state = SimilarMovieListState.start;

  @action
  setState(SimilarMovieListState newState) => state = newState;

  @action
  Future<List<SimilarMovie>> getSimilarMoviesById(int id) async {
    setState(SimilarMovieListState.loading);
    try {
      final list = await usecase.call(id);
      setState(SimilarMovieListState.sucess);
      return list;
    } catch (e) {
      setState(SimilarMovieListState.error);
      return [];
    }
  }
}

enum SimilarMovieListState { start, loading, sucess, error }
