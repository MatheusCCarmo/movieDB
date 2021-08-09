import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_similar_movies.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_similar_list/controllers/similar_movie_list_controller.dart';

class MockGetSimilarMovies extends Mock implements GetSimilarMovies {}

main() {
  final usecase = MockGetSimilarMovies();
  final controller = SimilarMovieListController(usecase);

  test('should return the states in order', () async {
    when(() => usecase.call(any())).thenAnswer((_) async => <SimilarMovie>[]);

    expect(controller.state, SimilarMovieListState.start);

    controller.getSimilarMoviesById(1);
    expect(controller.state, SimilarMovieListState.loading);

    await controller.getSimilarMoviesById(1);
    expect(controller.state, SimilarMovieListState.sucess);
  });
}
