import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/errors/errors.dart';
import 'package:moviedb/modules/movie_details/external/datasources/tmdb_movie_datasource.dart';

import '../../utils/tmdb_movie_mock.dart';

class DioMock extends Mock implements Dio {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  final dio = DioMock();
  final datasource = TmdbMovieDatasource(dio);

  test('should return a MovieModel', () async {
    //arrange
    when(() => dio.get(any())).thenAnswer((value) async => Response(
        data: jsonDecode(tmdbMovieMock),
        statusCode: 200,
        requestOptions: RequestOptions(path: '')));

    //acts
    final future = datasource.getMovie(1);
    final result = await future;

    //asserts
    expect(future, completes);
    expect(result.id, 155);
  });

  test('should throw a DatasourceError if status code is not 200', () async {
    //arrange
    when(() => dio.get(any())).thenAnswer((value) async => Response(
        data: jsonDecode(tmdbMovieMock),
        statusCode: 400,
        requestOptions: RequestOptions(path: '')));

    //acts
    final future = datasource.getMovie(1);

    //asserts
    expect(future, throwsA(isA<DatasourceError>()));
  });
}
