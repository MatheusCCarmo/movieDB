import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/entities/similar_movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_similar_movies.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_similar_list/controllers/similar_movies_list_controller.dart';
import 'package:moviedb/modules/utils/controller_status.dart';

class MockGetSimilarMovies extends Mock implements GetSimilarMovies {}

main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  final usecase = MockGetSimilarMovies();
  final controller = SimilarMoviesListController(usecase);

  test('should return the SimilarMoviesListController states in order',
      () async {
    when(() => usecase.call(any())).thenAnswer((_) async => <SimilarMovie>[]);

    expect(controller.status, ControllerStatus.start);

    controller.getSimilarMoviesById(1);
    expect(controller.status, ControllerStatus.loading);

    await controller.getSimilarMoviesById(1);
    expect(controller.status, ControllerStatus.sucess);
  });
}
