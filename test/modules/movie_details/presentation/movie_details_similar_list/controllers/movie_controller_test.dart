import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_movie.dart';
import 'package:moviedb/modules/movie_details/presentation/movie_details_header/controllers/movie_controller.dart';
import 'package:moviedb/modules/utils/controller_status.dart';

class MockGetMovie extends Mock implements GetMovie {}

main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  final usecase = MockGetMovie();
  final controller = MovieController(usecase);

  test('should return the MovieController states in order', () async {
    when(() => usecase.call(any())).thenAnswer((_) async => Movie(
        id: 1,
        posterPath: 'posterPath',
        originalTitle: 'originalTitle',
        popularity: 2,
        voteCount: 3));

    expect(controller.status, ControllerStatus.start);

    controller.getMovieById(1);
    expect(controller.status, ControllerStatus.loading);

    await controller.getMovieById(1);
    expect(controller.status, ControllerStatus.sucess);
  });
}
