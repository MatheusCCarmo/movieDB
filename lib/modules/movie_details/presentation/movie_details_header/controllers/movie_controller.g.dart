// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieController on _MovieController, Store {
  final _$movieAtom = Atom(name: '_MovieController.movie');

  @override
  Movie? get movie {
    _$movieAtom.reportRead();
    return super.movie;
  }

  @override
  set movie(Movie? value) {
    _$movieAtom.reportWrite(value, super.movie, () {
      super.movie = value;
    });
  }

  final _$isFavoriteAtom = Atom(name: '_MovieController.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  final _$statusAtom = Atom(name: '_MovieController.status');

  @override
  ControllerStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ControllerStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$getMovieByIdAsyncAction =
      AsyncAction('_MovieController.getMovieById');

  @override
  Future<void> getMovieById(int id) {
    return _$getMovieByIdAsyncAction.run(() => super.getMovieById(id));
  }

  final _$_MovieControllerActionController =
      ActionController(name: '_MovieController');

  @override
  dynamic setStatus(ControllerStatus newState) {
    final _$actionInfo = _$_MovieControllerActionController.startAction(
        name: '_MovieController.setStatus');
    try {
      return super.setStatus(newState);
    } finally {
      _$_MovieControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleIsFavorite() {
    final _$actionInfo = _$_MovieControllerActionController.startAction(
        name: '_MovieController.toggleIsFavorite');
    try {
      return super.toggleIsFavorite();
    } finally {
      _$_MovieControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movie: ${movie},
isFavorite: ${isFavorite},
status: ${status}
    ''';
  }
}
