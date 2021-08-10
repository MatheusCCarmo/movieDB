import 'package:mobx/mobx.dart';
import 'package:moviedb/modules/movie_details/domain/entities/movie.dart';
import 'package:moviedb/modules/movie_details/domain/usecases/get_movie.dart';
import 'package:moviedb/modules/utils/controller_status.dart';

part 'movie_controller.g.dart';

class MovieController = _MovieController with _$MovieController;

abstract class _MovieController with Store {
  final GetMovie usecase;

  _MovieController(this.usecase) {
    status = ControllerStatus.start;
  }

  @observable
  Movie? movie;

  @observable
  bool isFavorite = false;

  @observable
  ControllerStatus status = ControllerStatus.start;

  @action
  setStatus(ControllerStatus newState) => status = newState;

  @action
  toggleIsFavorite() => isFavorite = !isFavorite;

  @action
  Future<void> getMovieById(int id) async {
    setStatus(ControllerStatus.loading);
    try {
      movie = await usecase.call(id);
      setStatus(ControllerStatus.sucess);
    } catch (e) {
      setStatus(ControllerStatus.error);
    }
  }

  String formatValue(num value) {
    if (value > 1000000) {
      return ((value / 100000).floor() / 10).toStringAsFixed(1) + 'M';
    } else if (value > 1000) {
      return ((value / 100).floor() / 10).toStringAsFixed(1) + 'K';
    } else {
      return value.toString();
    }
  }
}
