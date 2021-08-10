// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movies_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SimilarMoviesListController on _SimilarMoviesListController, Store {
  final _$similarMoviesAtom =
      Atom(name: '_SimilarMoviesListController.similarMovies');

  @override
  ObservableList<SimilarMovie> get similarMovies {
    _$similarMoviesAtom.reportRead();
    return super.similarMovies;
  }

  @override
  set similarMovies(ObservableList<SimilarMovie> value) {
    _$similarMoviesAtom.reportWrite(value, super.similarMovies, () {
      super.similarMovies = value;
    });
  }

  final _$statusAtom = Atom(name: '_SimilarMoviesListController.status');

  @override
  SimilarMovieListStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(SimilarMovieListStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$getSimilarMoviesByIdAsyncAction =
      AsyncAction('_SimilarMoviesListController.getSimilarMoviesById');

  @override
  Future<void> getSimilarMoviesById(int id) {
    return _$getSimilarMoviesByIdAsyncAction
        .run(() => super.getSimilarMoviesById(id));
  }

  final _$_SimilarMoviesListControllerActionController =
      ActionController(name: '_SimilarMoviesListController');

  @override
  dynamic setStatus(SimilarMovieListStatus newState) {
    final _$actionInfo = _$_SimilarMoviesListControllerActionController
        .startAction(name: '_SimilarMoviesListController.setStatus');
    try {
      return super.setStatus(newState);
    } finally {
      _$_SimilarMoviesListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
similarMovies: ${similarMovies},
status: ${status}
    ''';
  }
}
