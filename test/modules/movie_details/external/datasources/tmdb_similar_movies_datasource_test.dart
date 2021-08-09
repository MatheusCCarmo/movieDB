import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/errors/errors.dart';
import 'package:moviedb/modules/movie_details/external/datasources/tmdb_similiar_movies_datarsource.dart';

import '../../utils/tmdb_similar_movies_mock.dart';

class DioMock extends Mock implements Dio {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await DotEnv().load(fileName: ".env");
  final dio = DioMock();
  final datasource = TmdbSimilarMoviesDatasource(dio);

  test('should return a List of SimilarMovieModel', () async {
    //arrange
    when(() => dio.get(any())).thenAnswer((value) async => Response(
        data: jsonDecode(tmdbSimilarMoviesMock),
        statusCode: 200,
        requestOptions: RequestOptions(path: '')));

    //acts
    final future = datasource.getSimilarMovies(1);
    final result = await future;

    //asserts
    expect(future, completes);
    expect(result[0].id, 607);
  });

  test('should throw a DatasourceError if status code is not 200', () async {
    //arrange
    when(() => dio.get(any())).thenAnswer((value) async => Response(
        data: jsonDecode(tmdbSimilarMoviesMock),
        statusCode: 400,
        requestOptions: RequestOptions(path: '')));

    //acts
    final future = datasource.getSimilarMovies(1);

    //asserts
    expect(future, throwsA(isA<DatasourceError>()));
  });
}
