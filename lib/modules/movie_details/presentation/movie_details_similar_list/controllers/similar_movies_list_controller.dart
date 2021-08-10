import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_similar_movies.dart';
import 'package:moviedb/modules/utils/genres_mock.dart';

part 'similar_movies_list_controller.g.dart';

class SimilarMoviesListController = _SimilarMoviesListController
    with _$SimilarMoviesListController;

abstract class _SimilarMoviesListController with Store {
  final GetSimilarMovies usecase;

  _SimilarMoviesListController(this.usecase) {
    status = SimilarMovieListStatus.start;
  }

  @observable
  ObservableList<SimilarMovie> similarMovies = <SimilarMovie>[].asObservable();

  @observable
  SimilarMovieListStatus status = SimilarMovieListStatus.start;

  @action
  setStatus(SimilarMovieListStatus newState) => status = newState;

  @action
  Future<void> getSimilarMoviesById(int id) async {
    setStatus(SimilarMovieListStatus.loading);
    try {
      final list = await usecase.call(id);
      setStatus(SimilarMovieListStatus.sucess);
      similarMovies = list.asObservable();
    } catch (e) {
      setStatus(SimilarMovieListStatus.error);
    }
  }

  String getGenreNameById(int id) {
    final genre = jsonDecode(genresMock)['genres']
        .firstWhere((element) => element['id'] == id);
    return genre['name'];
  }

  String genresToText(List<dynamic> genreIds) {
    String genresText = '';
    if (genreIds.length < 1) {
      return genresText;
    }
    genresText += getGenreNameById(genreIds[0]);
    if (genreIds.length > 1) {
      genresText += ', ';
      genresText += getGenreNameById(genreIds[1]);
    }

    return genresText;
  }
}

enum SimilarMovieListStatus { start, loading, sucess, error }
