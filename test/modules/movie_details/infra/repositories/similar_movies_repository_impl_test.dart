import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/errors/errors.dart';
import 'package:moviedb/modules/movie_details/infra/datasources/similar_movies_datasource.dart';
import 'package:moviedb/modules/movie_details/infra/models/similar_movie_model.dart';
import 'package:moviedb/modules/movie_details/infra/repositories/similar_movies_repository_impl.dart';

class MockSimilarMoviesDatasource extends Mock
    implements SimilarMoviesDatasource {}

void main() {
  final datasource = MockSimilarMoviesDatasource();
  final repository = SimilarMoviesRepositoryImpl(datasource);
  final tSimilarMovie = SimilarMovieModel(
    id: 1,
    genreIds: [0],
    originalTitle: 'Title',
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
  );

  test('should return a List of SimilarMovie', () async {
    //arrange
    when(() => datasource.getSimilarMovies(any()))
        .thenAnswer((value) async => [tSimilarMovie]);

    //acts
    final result = await repository.getSimilarMovies(1);

    //asserts
    expect(result, [tSimilarMovie]);
    verify(() => datasource.getSimilarMovies(1));
  });

  test('should throw an DatasourceError if datasource fails', () async {
    //arrange
    when(() => datasource.getSimilarMovies(any())).thenThrow(Exception());

    //acts
    var error;
    try {
      await repository.getSimilarMovies(1);
    } catch (e) {
      error = e;
    }
    //asserts
    expect(error, isA<DatasourceError>());
  });
}
