import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';
import 'package:moviedb/modules/movie_details/domain/repositories/movie_repository.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_movie.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  final repository = MockMovieRepository();
  final usecase = GetMovie(repository);
  final tMovie = Movie(
    id: 1,
    originalTitle: 'Title',
    popularity: 2,
    posterPath: '',
    voteCount: 3,
  );

  test('should return an entity Movie', () async {
    //arrange
    when(() => repository.getMovie(any())).thenAnswer((value) async => tMovie);

    //acts
    final result = await usecase(1);

    //asserts
    expect(result, tMovie);
    verify(() => repository.getMovie(1));
  });
}
