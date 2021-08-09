import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';

abstract class SimilarMoviesRepository {
  Future<List<SimilarMovie>> getSimilarMovies(int id);
}
