import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';
import 'package:moviedb/modules/movie_details/domain/repositories/movie_repository.dart';
import 'package:moviedb/modules/movie_details/infra/datasources/movie_datasource.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDatasource datasource;

  MovieRepositoryImpl(this.datasource);

  @override
  Future<Movie> getMovie(int id) async {
    return await datasource.getMovie(id);
  }
}
