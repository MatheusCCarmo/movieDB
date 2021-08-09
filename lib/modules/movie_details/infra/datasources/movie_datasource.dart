import 'package:moviedb/modules/movie_details/infra/models/movie_model.dart';

abstract class MovieDatasource {
  Future<MovieModel> getMovie(int id);
}
