import 'package:moviedb/modules/movie_details/infra/models/similar_movie_model.dart';

abstract class SimilarMoviesDatasource {
  Future<List<SimilarMovieModel>> getSimilarMovies(int id);
}
