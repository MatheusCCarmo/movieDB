import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/repositories/similar_movies_repository.dart';

class GetSimilarMovies {
  final SimilarMoviesRepository repository;

  GetSimilarMovies(this.repository);

  Future<List<SimilarMovie>> call(int id) {
    return repository.getSimilarMovies(id);
  }
}
