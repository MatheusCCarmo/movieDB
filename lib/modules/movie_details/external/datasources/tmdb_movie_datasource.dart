import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moviedb/modules/movie_details/domain/errors/errors.dart';
import 'package:moviedb/modules/movie_details/infra/datasources/movie_datasource.dart';
import 'package:moviedb/modules/movie_details/infra/models/movie_model.dart';

class TmdbMovieDatasource implements MovieDatasource {
  final Dio dio;

  TmdbMovieDatasource(this.dio);

  // final baseUrl = dotenv.env['BASE_URL'];
  // final apiKey = dotenv.env['API_KEY'];
  final baseUrl = 'BASE_URL';
  final apiKey = 'API_KEY';

  @override
  Future<MovieModel> getMovie(int movieId) async {
    final response =
        await dio.get('$baseUrl$movieId?api_key=$apiKey&language=en-US');

    if (response.statusCode == 200) {
      MovieModel movie;

      final data = response.data;

      movie = MovieModel.fromJson(data);
      return movie;
    } else {
      throw DatasourceError();
    }
  }
}
