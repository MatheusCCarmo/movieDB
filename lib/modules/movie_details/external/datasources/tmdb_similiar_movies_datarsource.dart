import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moviedb/modules/movie_details/domain/errors/errors.dart';
import 'package:moviedb/modules/movie_details/infra/datasources/similar_movies_datasource.dart';
import 'package:moviedb/modules/movie_details/infra/models/similar_movie_model.dart';

class TmdbSimilarMoviesDatasource implements SimilarMoviesDatasource {
  final Dio dio;

  TmdbSimilarMoviesDatasource(this.dio);

  // final baseUrl = dotenv.env['BASE_URL'];
  // final apiKey = dotenv.env['API_KEY'];
  final baseUrl = 'BASE_URL';
  final apiKey = 'API_KEY';

  @override
  Future<List<SimilarMovieModel>> getSimilarMovies(int movieId) async {
    final response = await dio
        .get('$baseUrl$movieId/similar?api_key=$apiKey&language=en-US&page=1');

    if (response.statusCode == 200) {
      final results = response.data['results'] as List;

      List<SimilarMovieModel> movies =
          results.map((e) => SimilarMovieModel.fromJson(e)).toList();

      return movies;
    } else {
      throw DatasourceError();
    }
  }
}
