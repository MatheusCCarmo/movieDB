import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/infra/datasources/movie_datasource.dart';
import 'package:moviedb/modules/movie_details/infra/models/movie_model.dart';
import 'package:moviedb/modules/movie_details/infra/repositories/movie_repository_impl.dart';

class MockMovieDatasource extends Mock implements MovieDatasource {}

void main() {
  final datasource = MockMovieDatasource();
  final repository = MovieRepositoryImpl(datasource);
  final tMovie = MovieModel(
    id: 1,
    originalTitle: 'Title',
    popularity: 2,
    posterPath: '',
    voteCount: 3,
  );
  test('should return a Movie', () async {
    //arrange
    when(() => datasource.getMovie(any())).thenAnswer((value) async => tMovie);

    //acts
    final result = await repository.getMovie(1);

    //asserts
    expect(result, tMovie);
    verify(() => datasource.getMovie(1));
  });
}
