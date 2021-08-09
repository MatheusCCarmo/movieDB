import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/repositories/similar_movies_repository.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_similar_movies.dart';

class MockSimilarMoviesRepository extends Mock
    implements SimilarMoviesRepository {}

void main() {
  final repository = MockSimilarMoviesRepository();
  final usecase = GetSimilarMovies(repository);
  final tSimilarMovie = SimilarMovie(
    id: 1,
    genreIds: [0],
    originalTitle: 'Title',
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
  );

  test('should return an entity Movie', () async {
    //arrange
    when(() => repository.getSimilarMovies(any()))
        .thenAnswer((value) async => [tSimilarMovie]);

    //acts
    final result = await usecase(1);

    //asserts
    expect(result, [tSimilarMovie]);
    verify(() => repository.getSimilarMovies(1));
  });
}
