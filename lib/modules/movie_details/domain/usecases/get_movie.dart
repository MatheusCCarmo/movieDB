import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';
import 'package:moviedb/modules/movie_details/domain/repositories/movie_repository.dart';

class GetMovie {
  final MovieRepository repository;

  GetMovie(this.repository);

  Future<Movie> call(int id) {
    return repository.getMovie(id);
  }
}
