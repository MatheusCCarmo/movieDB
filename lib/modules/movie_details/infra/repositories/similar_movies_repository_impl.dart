import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/errors/errors.dart';
import 'package:moviedb/modules/movie_details/domain/repositories/similar_movies_repository.dart';
import 'package:moviedb/modules/movie_details/infra/datasources/similar_movies_datasource.dart';

class SimilarMoviesRepositoryImpl implements SimilarMoviesRepository {
  final SimilarMoviesDatasource datasource;

  SimilarMoviesRepositoryImpl(this.datasource);

  @override
  Future<List<SimilarMovie>> getSimilarMovies(int id) async {
    try {
      return await datasource.getSimilarMovies(id);
    } catch (e) {
      throw DatasourceError();
    }
  }
}
