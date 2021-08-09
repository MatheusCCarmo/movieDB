import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<Movie> getMovie(int id);
}
